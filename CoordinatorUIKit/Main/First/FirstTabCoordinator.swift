//
//  FirstTabCoordinator.swift
//  CoordinatorUIKit
//
//  Created by thaxz on 27/08/23.
//

import Foundation
import UIKit

class FirstTabCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    
    lazy var firstViewController: FirstViewController = {
        let vc = FirstViewController()
        vc.title = "First"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([firstViewController], animated: false)
    }
    
}
