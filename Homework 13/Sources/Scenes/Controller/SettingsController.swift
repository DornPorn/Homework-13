//
//  SettingsViewController.swift
//  Homework 13
//
//  Created by Stanislav Rassolenko on 5/30/22.
//

import UIKit

final class SettingsController: UIViewController {
    
    private var settingsView: SettingsView? {
        guard isViewLoaded else { return nil }
        return view as? SettingsView
    }

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = SettingsView()
        title = SettingsView.Strings.navTitle
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}
