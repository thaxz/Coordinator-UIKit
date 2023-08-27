//
//  MainCoordinator.swift
//  CoordinatorUIKit
//
//  Created by thaxz on 27/08/23.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var rootViewController = UITabBarController()
    
    var childCoordinator = [Coordinator]()
    
    func start() {
        let firstCoordinator = FirstTabCoordinator()
        firstCoordinator.start()
        self.childCoordinator.append(firstCoordinator)
        let secondCoordinator = SecondTabCoordinator()
        secondCoordinator.start()
        self.childCoordinator.append(secondCoordinator)
        
        self.rootViewController.viewControllers = [firstCoordinator.rootViewController, secondCoordinator.rootViewController] 
    }
    
    
}
