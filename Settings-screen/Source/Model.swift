//
//  Model.swift
//  Settings-screen
//
//  Created by Ян Жигурс on 06.01.2023.
//

import UIKit

class Model {
    
    
    func configure() {
        
    }
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
