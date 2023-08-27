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
    
    init(window: UIWindow){
        self.window = window
    }
    
    func start() {
        window.rootViewController = UIHostingController(rootView: ContentView())
    }
    
    
    
    
    
    
    
}
