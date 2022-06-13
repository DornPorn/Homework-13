//
//  SettingsView.swift
//  Homework 13
//
//  Created by Stanislav Rassolenko on 6/13/22.
//

import UIKit

class SettingsView: UIView {
    // MARK: - TableView data
    
    private let cellData = CellModel.getCellsData()
    
    // MARK: - UI Elements
    
    let settingsTableView = UITableView(frame: .zero, style: .grouped)

    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupHierarchy()
        setupLayout()
        setupView()
        setupTableView()
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        self.addSubview(settingsTableView)
    }
    
    private func setupLayout() {
        settingsTableView.translatesAutoresizingMaskIntoConstraints = false
        settingsTableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        settingsTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        settingsTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        settingsTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    private func setupView() {
//        
        self.backgroundColor = .white
        settingsTableView.separatorInset = .init(top: Metric.otherSeparatorInsets, left: Metric.separatorInsetLeft, bottom: Metric.otherSeparatorInsets, right: Metric.otherSeparatorInsets)
    }
    
    private func setupTableView() {
        settingsTableView.delegate = self
        settingsTableView.dataSource = self
        settingsTableView.register(SettingsTableViewCell.self, forCellReuseIdentifier: SettingsTableViewCell.identifier)
        settingsTableView.register(TogglableSettingsTableViewCell.self, forCellReuseIdentifier: TogglableSettingsTableViewCell.identifier)
        settingsTableView.register(SettingsTableViewCellWithOnOffLabel.self, forCellReuseIdentifier: SettingsTableViewCellWithOnOffLabel.identifier)
        settingsTableView.register(SettingsTableViewCellWithNotification.self, forCellReuseIdentifier: SettingsTableViewCellWithNotification.identifier)
    }
}

// MARK: - UITableViewDataSource

extension SettingsView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if cellData[indexPath.section][indexPath.row].title == Strings.airplaneModeString || cellData[indexPath.section][indexPath.row].title == Strings.vpnString {
            let cell = tableView.dequeueReusableCell(withIdentifier: TogglableSettingsTableViewCell.identifier, for: indexPath) as! TogglableSettingsTableViewCell
            cell.configure(with: cellData[indexPath.section][indexPath.row])
            return cell
        } else if cellData[indexPath.section][indexPath.row].title == Strings.wifiString || cellData[indexPath.section][indexPath.row].title == Strings.bluetoothString {
            let cell = tableView.dequeueReusableCell(withIdentifier: SettingsTableViewCellWithOnOffLabel.identifier, for: indexPath) as! SettingsTableViewCellWithOnOffLabel
            cell.configure(with: cellData[indexPath.section][indexPath.row])
            return cell
        } else if cellData[indexPath.section][indexPath.row].title == Strings.generalString {
            let cell = tableView.dequeueReusableCell(withIdentifier: SettingsTableViewCellWithNotification.identifier, for: indexPath) as! SettingsTableViewCellWithNotification
            cell.configure(with: cellData[indexPath.section][indexPath.row])
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: SettingsTableViewCell.identifier, for: indexPath) as! SettingsTableViewCell
            cell.configure(with: cellData[indexPath.section][indexPath.row])
            return cell
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return cellData.count
    }
}

// MARK: - UITableViewDelegate

extension SettingsView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Metric.rowHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        return section == 0 ? view : nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return Metric.headerHeight
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Нажата ячейка \(cellData[indexPath.section][indexPath.row].title ?? "Empty cell?")")
    }
}

// MARK: - Constants

extension SettingsView {
    enum Metric {
        static let otherSeparatorInsets: CGFloat = 0
        static let separatorInsetLeft: CGFloat = 70
        static let rowHeight: CGFloat = 45
        static let headerHeight: CGFloat = 20
    }
    
    enum Strings {
        static let navTitle: String = "Настройки"
        static let airplaneModeString: String = "Авиарежим"
        static let vpnString: String = "VPN"
        static let wifiString: String = "Wi-Fi"
        static let bluetoothString: String = "Bloetooth"
        static let generalString: String = "Основные"
    }
}
