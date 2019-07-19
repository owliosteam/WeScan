//
//  SettingsManager.swift
//  WeScan
//
//  Created by Kevin Farst on 7/19/19.
//  Copyright © 2019 WeTransfer. All rights reserved.
//

import Foundation

public final class SettingsManager {
    static let shared = SettingsManager()

    var settings: WeScan.Settings!

    func add(settings: WeScan.Settings) {
        self.settings = settings
    }
    
    public init() { }
}
