//
//  SettingsTableViewCell.swift
//  Settings-screen
//
//  Created by Ян Жигурс on 06.01.2023.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    private let iconContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

}
