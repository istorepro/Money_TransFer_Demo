//
//  AppDelegate.swift
//  Money_Transfer_APP
//
//  Created by serge kone Dossongui on 7/28/16.
//  Copyright © 2016 serge kone Dossongui. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        
        
//        window = UIWindow(frame: UIScreen.mainScreen().bounds)
//        
//        //access the storyboard
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        
//        //crreate a navigation controller by creating a view controller on the storyboard and cast as  navigation controller
//        let TvNavigationController = storyboard.instantiateViewControllerWithIdentifier("HomeNavigationController") as! UINavigationController
//        let TvViewController = TvNavigationController.topViewController as! HomeViewController
//        TvViewController.FirstEndPoint = "tv"
//        TvNavigationController.tabBarItem.title = "Tv Show"
//        TvNavigationController .tabBarItem.image = UIImage(named: "IconSmallTvShow")
//        
//        
//        let MovNavigationController = storyboard.instantiateViewControllerWithIdentifier("HomeNavigationController") as! UINavigationController
//        let MovViewController = MovNavigationController.topViewController as! HomeViewController
//        MovViewController.secondEndPoint = "movie"
//        MovNavigationController.tabBarItem.title = "Movies"
//        MovNavigationController.tabBarItem.image = UIImage(named: "Icon-Small_video")
//        
//        
//        let tabBarController =  UITabBarController()
//        tabBarController.viewControllers = [MovNavigationController, TvNavigationController]
//        UITabBar.appearance().barTintColor = UIColor.blackColor()
//        
//        window?.rootViewController = tabBarController
//        window?.makeKeyAndVisible()
//        
//        //add tite to tabBar
//        
//        
//        
//        
//        //        //modifie the header of the navigation view controller
//        UINavigationBar.appearance().barTintColor = UIColor(red: 63/255.0, green:
//            74/255.0, blue: 191/255.0, alpha: 1.0)
//        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
//        if let barFont = UIFont(name: "Avenir-Light", size: 24.0) {            UINavigationBar.appearance().titleTextAttributes =
//            [NSForegroundColorAttributeName:UIColor.whiteColor(),
//             NSFontAttributeName:barFont]
//        }
//
//        
        
        
        
        
        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

