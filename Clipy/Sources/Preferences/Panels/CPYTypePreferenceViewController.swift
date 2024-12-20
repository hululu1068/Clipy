//
//  CPYTypePreferenceViewController.swift
//
//  Clipy
//  GitHub: https://github.com/clipy
//  HP: https://clipy-app.com
//
//  Created by Econa77 on 2016/03/17.
//
//  Copyright © 2015-2018 Clipy Project.
//

import Cocoa

class CPYTypePreferenceViewController: NSViewController {

    // MARK: - Properties
    @objc var storeTypes: NSMutableDictionary!

    // MARK: - Initialize
    override func loadView() {
        if let dictionary = AppEnvironment.current.defaults.object(forKey: Constants.UserDefaults.storeTypes) as? [String: Any] {
            storeTypes = NSMutableDictionary(dictionary: dictionary)
        } else {
            storeTypes = NSMutableDictionary()
        }
        super.loadView()
        setupSystemFeatures()
        #if arch(arm64)
        setupForAppleSilicon()
        #endif
    }

    #if arch(arm64)
    private func setupForAppleSilicon() {
        // Configure clipboard handling for Apple Silicon
    }
    #endif

    private func setupSystemFeatures() {
        if #available(macOS 11.0, *) {
            // Use modern clipboard APIs
        } else {
            // Use legacy clipboard APIs
        }
    }

}
