//
//  NotificationView.swift
//  Homework 13
//
//  Created by Stanislav Rassolenko on 5/31/22.
//

import UIKit

class NotificationView: UIView {
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - UI Elements
    
    private lazy var notificationContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = Metric.containerWidthAndHeight / 2
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var notificationLabel: UILabel = {
        let label = UILabel()
        label.text = Strings.labelText
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        self.addSubview(notificationContainer)
        notificationContainer.addSubview(notificationLabel)
    }
    
    private func setupLayout() {
        notificationContainer.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        notificationContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        notificationContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        notificationContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        notificationContainer.widthAnchor.constraint(equalToConstant: Metric.containerWidthAndHeight).isActive = true
        notificationContainer.heightAnchor.constraint(equalToConstant: Metric.containerWidthAndHeight).isActive = true
        
        notificationLabel.centerXAnchor.constraint(equalTo: notificationContainer.centerXAnchor).isActive = true
        notificationLabel.centerYAnchor.constraint(equalTo: notificationContainer.centerYAnchor).isActive = true
    }
}

// MARK: - Constants

extension NotificationView {
    enum Metric {
        static let containerWidthAndHeight: CGFloat = 26
    }
    
    enum Strings {
        static let labelText: String = "1"
    }
}
