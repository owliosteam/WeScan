//
//  SettingsUI.swift
//  WeScan
//
//  Created by Kevin Farst on 7/19/19.
//  Copyright © 2019 WeTransfer. All rights reserved.
//

import Foundation

protocol SettingsUI {
    
}

extension SettingsUI {
    var settingsManager: SettingsManager {
        return SettingsManager.shared
    }
}
