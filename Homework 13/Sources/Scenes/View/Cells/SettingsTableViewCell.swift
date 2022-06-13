//
//  SettingsTableViewCell.swift
//  Homework 13
//
//  Created by Stanislav Rassolenko on 5/30/22.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    // MARK: - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Cell identifier
    
    static let identifier = Strings.cellId
    
    // MARK: - UI Elements
    
    private lazy var cellIcon: CellIconView = {
        let view = CellIconView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var cellLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    private lazy var arrowImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: Strings.arrowImageName)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .black.withAlphaComponent(Metric.alpha)
        return imageView
    }()
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        contentView.addSubview(cellIcon)
        contentView.addSubview(cellLabel)
        contentView.addSubview(arrowImageView)
    }
    
    private func setupLayout() {
        cellIcon.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        cellIcon.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: Metric.cellPadding).isActive = true
        
        cellLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        cellLabel.leadingAnchor.constraint(equalTo: cellIcon.trailingAnchor, constant: Metric.cellPadding).isActive = true
        
        arrowImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        arrowImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -Metric.cellPadding).isActive = true
        arrowImageView.widthAnchor.constraint(equalToConstant: Metric.arrowWidth).isActive = true
        arrowImageView.heightAnchor.constraint(equalToConstant: Metric.arrowHeight).isActive = true
    }
    
    func configure(with model: Cell) {
        if let safeImg = model.icon {
            if safeImg == Strings.bluetoothString || safeImg == Strings.stocksString {
                cellIcon.cellIcon.image = UIImage(named: safeImg)
            } else {
                cellIcon.cellIcon.image = UIImage(systemName: safeImg)
            }
        }
            
        if let title = model.title {
            cellLabel.text = "\(title)"
        }
            
        if let color = model.color {
            cellIcon.containerView.backgroundColor = color
        }
    }
}

// MARK: - Constants

extension SettingsTableViewCell {
    enum Metric {
        static let alpha: CGFloat = 0.3
        static let cellPadding: CGFloat = 20
        static let arrowWidth: CGFloat = 8
        static let arrowHeight: CGFloat = 15
    }
    
    enum Strings {
        static let cellId: String = "settingsCell"
        static let arrowImageName: String = "chevron.right"
        static let bluetoothString: String = "bluetooth"
        static let stocksString: String = "stocks"
    }
}
