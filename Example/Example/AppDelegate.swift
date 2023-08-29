//
//  AppDelegate.swift
//  Example
//
//  Created by William.Weng on 2022/12/15.
//

import UIKit
import WWSignInWith3rd_Apple
import WWSignInWith3rd_LINE

@main
final class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
}

// MARK: - 相關設定
extension AppDelegate {
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        _ = WWSignInWith3rd.LINE.shared.canOpenURL(app, open: url, options: options)
        return true
    }
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        _ = WWSignInWith3rd.LINE.shared.canOpenUniversalLink(application, continue: userActivity, restorationHandler: restorationHandler)
        return true
    }
}

