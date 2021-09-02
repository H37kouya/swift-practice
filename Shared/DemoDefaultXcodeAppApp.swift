//
//  DemoDefaultXcodeAppApp.swift
//  Shared
//
//  Created by 樋口航也 on 2021/09/02.
//

import SwiftUI
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        #if DEBUG
        var injectionBundlePath = "/Applications/InjectionIII.app/Contents/Resources"
        #if targetEnvironment(macCatalyst)
        injectionBundlePath = "\(injectionBundlePath)/macOSInjection.bundle"
        #elseif os(iOS)
        injectionBundlePath = "\(injectionBundlePath)/iOSInjection.bundle"
        #endif
        Bundle(path: injectionBundlePath)?.load()
        #endif
        return true
    }
}
@main
struct DemoDefaultXcodeAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
