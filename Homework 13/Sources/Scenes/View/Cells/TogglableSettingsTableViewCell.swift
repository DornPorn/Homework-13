//
//  TogglableSettingsTableViewCell.swift
//  Homework 13
//
//  Created by Stanislav Rassolenko on 5/31/22.
//

import UIKit

class TogglableSettingsTableViewCell: UITableViewCell {
    
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
    
    lazy var cellLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var toggleSwitch: UISwitch = {
        let switchItem = UISwitch()
        switchItem.translatesAutoresizingMaskIntoConstraints = false
        return switchItem
    }()
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        contentView.addSubview(cellIcon)
        contentView.addSubview(cellLabel)
        contentView.addSubview(toggleSwitch)
    }
    
    private func setupLayout() {
        cellIcon.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        cellIcon.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: Metric.cellPadding).isActive = true
        
        cellLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        cellLabel.leadingAnchor.constraint(equalTo: cellIcon.trailingAnchor, constant: Metric.cellPadding).isActive = true
        
        toggleSwitch.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        toggleSwitch.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -Metric.cellPadding).isActive = true
    }
    
    func configure(with model: Cell) {
        if let safeImg = model.icon {
            if safeImg == Strings.bluetoothImgString || safeImg == Strings.stocksImgString {
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

extension TogglableSettingsTableViewCell {
    enum Metric {
        static let cellPadding: CGFloat = 20
    }
    
    enum Strings {
        static let cellId: String = "togglableSettingsCell"
        static let bluetoothImgString: String = "bluetooth"
        static let stocksImgString: String = "stocks"
    }
}

