//
//  CellIconView.swift
//  Homework 13
//
//  Created by Stanislav Rassolenko on 5/31/22.
//

import UIKit

class CellIconView: UIView {
    
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
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = Metric.cornerRadius
        return view
    }()
    
    lazy var cellIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .white
        imageView.clipsToBounds = true
        return imageView
    }()
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        self.addSubview(containerView)
        containerView.addSubview(cellIcon)
    }
    
    private func setupLayout() {
        containerView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        containerView.widthAnchor.constraint(equalToConstant: Metric.containerWidthAndHeight).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: Metric.containerWidthAndHeight).isActive = true
        
        cellIcon.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        cellIcon.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        cellIcon.widthAnchor.constraint(equalToConstant: Metric.iconWidthAndHeight).isActive = true
        cellIcon.heightAnchor.constraint(equalToConstant: Metric.iconWidthAndHeight).isActive = true
    }
}

// MARK: - Constants

extension CellIconView {
    enum Metric {
        static let cornerRadius: CGFloat = 5
        static let containerWidthAndHeight: CGFloat = 30
        static let iconWidthAndHeight: CGFloat = 26
    }
}
