//
//  TogglableSettingsTableViewCell.swift
//  Homework 13
//
//  Created by Stanislav Rassolenko on 5/31/22.
//

import UIKit

class TogglableSettingsTableViewCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        contentView.addSubview(containerView)
        containerView.addSubview(cellIcon)
        contentView.addSubview(cellLabel)
        contentView.addSubview(toggleSwitch)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    lazy var cellIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .white
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var cellLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.clipsToBounds = true
        view.backgroundColor = .systemOrange
        return view
    }()
    
    private lazy var toggleSwitch: UISwitch = {
        let switchItem = UISwitch()
        switchItem.translatesAutoresizingMaskIntoConstraints = false
        return switchItem
    }()
    
    var data: CellModel? {
        didSet{
            guard let cellItem = data else { return }
            
            if let img = cellItem.icon {
                if img == "bluetooth" || img == "stocks" {
                    cellIcon.image = UIImage(named: img)
                    cellIcon.image?.withTintColor(.white)
                } else {
                    cellIcon.image = UIImage(systemName: img)
                }
                
            }
            
            if let title = cellItem.title {
                cellLabel.text = "\(title)"
            }
            
            if let color = cellItem.color {
                containerView.backgroundColor = color
            }
        }
    }
    
    private func setupLayout() {
        
        containerView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 20).isActive = true
        containerView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        cellIcon.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        cellIcon.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        cellIcon.widthAnchor.constraint(equalToConstant: 26).isActive = true
        cellIcon.heightAnchor.constraint(equalToConstant: 26).isActive = true
        
        cellLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        cellLabel.leadingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 20).isActive = true
        
        toggleSwitch.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        toggleSwitch.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20).isActive = true
//        toggleSwitch.widthAnchor.constraint(equalToConstant: 8).isActive = true
//        toggleSwitch.heightAnchor.constraint(equalToConstant: 15).isActive = true
    }
}

