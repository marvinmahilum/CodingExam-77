//
//  AppDelegate.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var mainCoordinator: MainCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        initWindow()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

extension AppDelegate {
    
    private func initWindow() {
        
        let navController = UINavigationController()
        mainCoordinator = MainCoordinator(navController: navController)
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = navController
        window.makeKeyAndVisible()
        self.window = window
        
        mainCoordinator?.start()
        
    }
    
}
