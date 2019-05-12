//
//  AppDelegate.swift
//  Large Title Navigation Bar
//
//  Created by Pawan kumar on 29/04/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        //Navigation Configuration
        if #available(iOS 11.0, *) {
            
            UINavigationBar.appearance().prefersLargeTitles = true
            UINavigationBar.appearance().tintColor = UIColor.white
            UINavigationBar.appearance().largeTitleTextAttributes =
                [NSAttributedString.Key.foregroundColor: UIColor.blue,
                 NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 30)]
            
            UINavigationBar.appearance().titleTextAttributes =
                [NSAttributedString.Key.foregroundColor: UIColor.blue,
                 NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
            
        } else {
            // Fallback on earlier versions
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


    func multiLineLargeTitleInNavigationBar(viewController: UIViewController, title: String) -> Void {
        
        //Navigation Configuration
        if #available(iOS 11.0, *) {
            
            viewController.navigationController?.navigationBar.prefersLargeTitles = true
            viewController.navigationController?.navigationItem.largeTitleDisplayMode = .automatic
            
            /*
             viewController.navigationController?.navigationBar.largeTitleTextAttributes = [
             NSAttributedStringKey.foregroundColor: UIColor.white,
             NSAttributedStringKey.font : UIFont.preferredFont(forTextStyle: .largeTitle)
             ]*/
            
        }else {
            
        }
        
        //Update Large Label
        var count = 0
        for navItem in(viewController.navigationController?.navigationBar.subviews)! {
            for itemSubView in navItem.subviews {
                if let largeLabel = itemSubView as? UILabel {
                    if count == 1 {
                        break;
                    }
                    largeLabel.text = title
                    largeLabel.numberOfLines = 0
                    largeLabel.lineBreakMode = .byWordWrapping
                    count = count + 1
                }
            }
        }
        
        //Update Navigation Title
        viewController.navigationController?.navigationBar.layoutSubviews()
        viewController.navigationController?.navigationBar.layoutIfNeeded()
    }
    
}

