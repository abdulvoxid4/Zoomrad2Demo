//
//  AppDelegate.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 04/07/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = .init(frame: UIScreen.main.bounds)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if UserDefaults.standard.bool(forKey: "isRegistred") == true {
            window?.rootViewController =  TabBarVC()
        } else {
            window?.rootViewController = UINavigationController(rootViewController: ViewController())
        }
        window?.makeKeyAndVisible()
        return true
    }
}

