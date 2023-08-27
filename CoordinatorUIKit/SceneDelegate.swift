//
//  SceneDelegate.swift
//  CoordinatorUIKit
//
//  Created by thaxz on 27/08/23.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var applicationCordinator: ApplicationCoordinator?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            // starting coordinator
            let applicationCoordinator = ApplicationCoordinator(window: window)
            applicationCoordinator.start()
            
            self.applicationCordinator = applicationCoordinator
            window.makeKeyAndVisible()
            
        }
    }



}

