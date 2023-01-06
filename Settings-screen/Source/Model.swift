//
//  Model.swift
//  Settings-screen
//
//  Created by Ян Жигурс on 06.01.2023.
//

import UIKit

class Model {
    var models = [Section]()
    
    func configure() {
        models.append(Section(options: [
            .topCell(model: TopCellOption(icon: UIImage(named: "swift"), title: "Ян Жигурс", subtitleText: "Apple ID, iCloud, контент и покупки", handler: {
                print("Главная ячейка")
            }))
        ]))
    }
}

struct Section {
    let options: [SettingsOptionType]
}

enum SettingsOptionType {
    case staticCell(model: SettingsOption)
    case switchCell(model: SettingsSwitchOption)
    case topCell(model: TopCellOption)
    case badgeCell(model: SettingsBadgeOption)
}

struct SettingsOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let handler: (() -> Void)
}

struct SettingsSwitchOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let isOn: Bool
    let handler: (() -> Void)
}

struct TopCellOption {
    let icon: UIImage?
    let title: String
    let subtitleText: String
    let handler: (() -> Void)
}

struct SettingsBadgeOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let badgeLabel: String
    let handler: (() -> Void)
}
