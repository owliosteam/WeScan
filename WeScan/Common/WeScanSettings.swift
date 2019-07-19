//
//  WeScanSettings.swift
//  WeScan
//
//  Created by Kevin Farst on 7/19/19.
//  Copyright © 2019 WeTransfer. All rights reserved.
//

import Foundation

public enum WeScanSettingsOnOff {
    case off
    case on
    
    var isOn: Bool {
        return self == .on
    }
}

public enum WeScanSettingsCaptureMode {
    case automatic
    case manual
}

public enum WeScan {
    public class Settings {
        let enhanceButton: WeScanSettingsOnOff
        let rotateButton: WeScanSettingsOnOff
        let captureMode: WeScanSettingsCaptureMode
        
        public init(
            ehanceButton: WeScanSettingsOnOff = .on,
            rotateButton: WeScanSettingsOnOff = .on,
            captureMode: WeScanSettingsCaptureMode = .automatic
            ) {
            self.enhanceButton = ehanceButton
            self.rotateButton = rotateButton
            self.captureMode = captureMode
        }
    }
}
