//
//  ApplicationCoordinator.swift
//  CoordinatorUIKit
//
//  Created by thaxz on 27/08/23.
//

import Foundation
import UIKit
import SwiftUI
import Combine

class ApplicationCoordinator: Coordinator {
    
    let window: UIWindow
    
    var childCoordinators = [Coordinator]()
    
    // Using combine to pass data
    let hasSeenOnboarding = CurrentValueSubject<Bool, Never>(false)
    var subscriptions = Set<AnyCancellable>()
    
    init(window: UIWindow){
        self.window = window
    }
    
    func start() {
        setupOnboardingValue()
        // subscribing to hasSeenOnboarding publisher
        hasSeenOnboarding
            .removeDuplicates()
            .sink { [weak self] hasSeen in
            if hasSeen {
                let mainCoordinator = MainCoordinator()
                mainCoordinator.start()
                self?.childCoordinators = [mainCoordinator]
                self?.window.rootViewController = mainCoordinator.rootViewController
            } else if let hasSeenOnboarding = self?.hasSeenOnboarding {
                let onboardingCoordinator = OnboardingCoordinator(hasSeenOnboarding: hasSeenOnboarding)
                onboardingCoordinator.start()
                self?.childCoordinators = [onboardingCoordinator]
                self?.window.rootViewController = onboardingCoordinator.rootViewController
            }
        }.store(in: &subscriptions)
        
    }
    
    func setupOnboardingValue(){
        // storing and loading of state/data
        let key = "hasSeenOnboarding"
        let value = UserDefaults.standard.bool(forKey: key) // default or false
        hasSeenOnboarding.send(value)
        
        hasSeenOnboarding
            .filter({$0})
            .sink { value in
                UserDefaults.standard.set(value, forKey: key)
            }.store(in: &subscriptions)
        
    }
    
    
    
    
    
}
