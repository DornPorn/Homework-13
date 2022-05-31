//
//  SettingsViewController.swift
//  Homework 13
//
//  Created by Stanislav Rassolenko on 5/30/22.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private let cellData = CellAPI.getCellsData()
    
    let settingsTableView = UITableView(frame: .zero, style: .grouped)

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        setupHierarchy()
        setupLayout()
        setupView()
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        view.addSubview(settingsTableView)
    }
    
    private func setupLayout() {
        settingsTableView.translatesAutoresizingMaskIntoConstraints = false
        settingsTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        settingsTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        settingsTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        settingsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    private func setupView() {
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .white
        settingsTableView.separatorInset = .init(top: 0, left: 70, bottom: 0, right: 0)
    }
    
    private func setupTableView() {
        settingsTableView.delegate = self
        settingsTableView.dataSource = self
        settingsTableView.register(SettingsTableViewCell.self, forCellReuseIdentifier: "settingsCell")
        settingsTableView.register(TogglableSettingsTableViewCell.self, forCellReuseIdentifier: "togglableSettingsCell")
        settingsTableView.register(SettingsTableViewCellWithOnOffLabel.self, forCellReuseIdentifier: "settingsCellWithOnOffLabel")
        settingsTableView.register(SettingsTableViewCellWithNotification.self, forCellReuseIdentifier: "settingsCellWithNotification")
    }
}

extension SettingsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if cellData[indexPath.section][indexPath.row].title == "Авиарежим" || cellData[indexPath.section][indexPath.row].title == "VPN" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "togglableSettingsCell", for: indexPath) as! TogglableSettingsTableViewCell
            cell.data = cellData[indexPath.section][indexPath.row]
            cell.selectionStyle = .none
            return cell
        } else if cellData[indexPath.section][indexPath.row].title == "Wi-Fi" || cellData[indexPath.section][indexPath.row].title == "Bluetooth" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCellWithOnOffLabel", for: indexPath) as! SettingsTableViewCellWithOnOffLabel
            cell.data = cellData[indexPath.section][indexPath.row]
            cell.selectionStyle = .none
            return cell
        } else if cellData[indexPath.section][indexPath.row].title == "Основные" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCellWithNotification", for: indexPath) as! SettingsTableViewCellWithNotification
            cell.data = cellData[indexPath.section][indexPath.row]
            cell.selectionStyle = .none
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCell", for: indexPath) as! SettingsTableViewCell
            cell.data = cellData[indexPath.section][indexPath.row]
            cell.selectionStyle = .none
            return cell
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return cellData.count
    }
}

extension SettingsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        return section == 0 ? view : nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
}
