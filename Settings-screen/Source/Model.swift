//
//  Model.swift
//  Settings-screen
//
//  Created by Ян Жигурс on 06.01.2023.
//

import UIKit

class Model {
    var models = [Section]()
    
    func configure() -> [Section]{
        models.append(Section(options: [
            .topCell(model: TopCellOption(icon: UIImage(named: "swift"), title: "Ян Жигурс", subtitleText: "Apple ID, iCloud, контент и покупки", handler: {
                print("Главная ячейка")
            }))
        ]))
        
        models.append(Section(options: [
            .staticCell(model: SettingsOption(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue, handler: {
                print("Нажатие на WiFi")
            })),
            .staticCell(model: SettingsOption(title: "Bluetooth", icon: UIImage(systemName: "dot.radiowaves.left.and.right"), iconBackgroundColor: .systemBlue, handler: {
                print("Нажатие на Bluetooth")
            })),
            .staticCell(model: SettingsOption(title: "Cотовая связь", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen, handler: {
                print("Нажатие на Cотовая связь")
            })),
            .staticCell(model: SettingsOption(title: "Режим модема", icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen, handler: {
                print("Нажатие на Режим модема")
            }))])
        )
        
        models.append(Section(options: [
            .staticCell(model: SettingsOption(title: "Уведомления", icon: UIImage(systemName: "bell.badge"), iconBackgroundColor: .systemRed, handler: {
                print("Нажатие на Уведомления")
            })),
            .staticCell(model: SettingsOption(title: "Звуки", icon: UIImage(systemName: "speaker.wave.3"), iconBackgroundColor: .systemPink, handler: {
                print("Нажатие на Звуки")
            })),
            .staticCell(model: SettingsOption(title: "Фокусирование", icon: UIImage(systemName: "moon"), iconBackgroundColor: .systemPurple, handler: {
                print("Нажатие на Фокусирование")
            })),
            .staticCell(model: SettingsOption(title: "Экранное время", icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemPurple, handler: {
                print("Нажатие на Экранное время")
            }))])
        )
        
        models.append(Section(options: [
            .staticCell(model: SettingsOption(title: "Основные", icon: UIImage(systemName: "gear"), iconBackgroundColor: .systemGray4, handler: {
                print("Нажатие на Основные")
            })),
            .staticCell(model: SettingsOption(title: "Пункт управления", icon: UIImage(systemName: "switch.2"), iconBackgroundColor: .systemGray4, handler: {
                print("Нажатие на Пункт управления")
            })),
            .staticCell(model: SettingsOption(title: "Экран и яркость", icon: UIImage(systemName: "textformat.size"), iconBackgroundColor: .systemBlue, handler: {
                print("Нажатие на Экран и яркость")
            })),
            .staticCell(model: SettingsOption(title: "Экран домой", icon: UIImage(systemName: "apps.iphone"), iconBackgroundColor: .systemBlue, handler: {
                print("Нажатие на Экран домой")
            })),
            .staticCell(model: SettingsOption(title: "Универсальный доступ", icon: UIImage(systemName: "figure.wave.circle"), iconBackgroundColor: .systemBlue, handler: {
                print("Нажатие на Универсальный доступ")
            })),
            .staticCell(model: SettingsOption(title: "Обои", icon: UIImage(systemName: "paintbrush.fill"), iconBackgroundColor: .systemCyan, handler: {
                print("Нажатие на Обои")
            }))])
        )
        return models
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
