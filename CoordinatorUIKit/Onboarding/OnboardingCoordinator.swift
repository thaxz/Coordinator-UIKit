//
//  OnboardingCoordinator.swift
//  CoordinatorUIKit
//
//  Created by thaxz on 27/08/23.
//

import Foundation
import SwiftUI

class OnboardingCoordinator: Coordinator {
    
    var rootViewController = UIViewController()
    
    func start() {
        let view = OnboardingView {
            
        }
        rootViewController = UIHostingController(rootView: view)
    }

}
