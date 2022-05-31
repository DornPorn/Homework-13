//
//  NotificationView.swift
//  Homework 13
//
//  Created by Stanislav Rassolenko on 5/31/22.
//

import UIKit

class NotificationView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private lazy var notificationContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 13
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var notificationLabel: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func setupHierarchy() {
        self.addSubview(notificationContainer)
        notificationContainer.addSubview(notificationLabel)
    }
    
    private func setupLayout() {
        notificationContainer.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        notificationContainer.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        notificationContainer.widthAnchor.constraint(equalToConstant: 26).isActive = true
        notificationContainer.heightAnchor.constraint(equalToConstant: 26).isActive = true
        
        notificationLabel.centerXAnchor.constraint(equalTo: notificationContainer.centerXAnchor).isActive = true
        notificationLabel.centerYAnchor.constraint(equalTo: notificationContainer.centerYAnchor).isActive = true
    }
}
