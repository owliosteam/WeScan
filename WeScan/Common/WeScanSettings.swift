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

public struct WeScanSettingsPhotoLibrary {
    let navigationBarTintColor: UIColor?
    let navigationBarTitleTintColor: UIColor?
    let navigationBarTitleHighlightedColor: UIColor?
    let selectedImageOverlayColor: UIColor?
    let enabled: WeScanSettingsOnOff
    
    public init() {
        navigationBarTintColor = nil
        navigationBarTitleTintColor = nil
        navigationBarTitleHighlightedColor = nil
        selectedImageOverlayColor = nil
        enabled = .off
    }
    
    public init(
        navigationBarTintColor: UIColor?,
        navigationBarTitleTintColor: UIColor?,
        navigationBarTitleHighlightedColor: UIColor?,
        selectedImageOverlayColor: UIColor?,
        enabled: WeScanSettingsOnOff
        ) {
        self.navigationBarTintColor = navigationBarTintColor
        self.navigationBarTitleTintColor = navigationBarTitleTintColor
        self.navigationBarTitleHighlightedColor = navigationBarTitleHighlightedColor
        self.selectedImageOverlayColor = selectedImageOverlayColor
        self.enabled = enabled
    }
    
    var isOn: Bool {
        return enabled == .on
    }
}

public enum WeScan {
    public class Settings {
        let enhanceButton: WeScanSettingsOnOff
        let rotateButton: WeScanSettingsOnOff
        let photoLibrary: WeScanSettingsPhotoLibrary
        let captureMode: WeScanSettingsCaptureMode

        public init(
            ehanceButton: WeScanSettingsOnOff = .on,
            rotateButton: WeScanSettingsOnOff = .on,
            photoLibrary: WeScanSettingsPhotoLibrary = WeScanSettingsPhotoLibrary(),
            captureMode: WeScanSettingsCaptureMode = .automatic
            ) {
            self.enhanceButton = ehanceButton
            self.rotateButton = rotateButton
            self.photoLibrary = photoLibrary
            self.captureMode = captureMode
        }
    }
}
