//
//  ABTracking.swift
//  ABTrackingSDK
//
//  Created by Azzam Ubaidillah on 14/11/23.
//  Copyright © 2023 Azzam Ubaidillah. All rights reserved.
//

import Foundation

public class ABTrackingSDK {
    public static func trackAppInstallation() {
        if !UserDefaults.standard.bool(forKey: ABTrackingConstants.installedFlagKey) {
            // First-time installation logic
            UserDefaults.standard.set(true, forKey: ABTrackingConstants.installedFlagKey)

            // Trigger the installation event
            trackEvent("AppInstalled")
        }

        storeAppVersion()
    }

    private static func trackEvent(_ eventName: String) {
        // Implement your event tracking logic here
        print("Tracking event: \(eventName)")
    }

    private static func storeAppVersion() {
        let currentAppVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
        UserDefaults.standard.set(currentAppVersion, forKey: ABTrackingConstants.appVersionKey)
    }

    public static func trackAppUpdate() {
        // Check for app version change
        if hasAppVersionChanged() {
            // Logic for tracking app update
            // ...
            
            print("Tracking event: AppUpdated")

            // Update the stored app version
            storeAppVersion()
        }
    }

    private static func hasAppVersionChanged() -> Bool {
        let currentAppVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
        let storedAppVersion = UserDefaults.standard.string(forKey: ABTrackingConstants.appVersionKey)
        return currentAppVersion != storedAppVersion
    }
}
