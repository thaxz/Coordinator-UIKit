//
//  ApplicationCoordinator.swift
//  CoordinatorUIKit
//
//  Created by thaxz on 27/08/23.
//

import Foundation
import UIKit
import SwiftUI

class ApplicationCoordinator: Coordinator {
    
    let window: UIWindow
    
    var childCoordinators = [Coordinator]()
    
    init(window: UIWindow){
        self.window = window
    }
    
    func start() {
        let onboardingCoordinator = OnboardingCoordinator()
        onboardingCoordinator.start()
        self.childCoordinators = [onboardingCoordinator]
        window.rootViewController = onboardingCoordinator.rootViewController
    }
    
    
    
    
    
    
    
}
