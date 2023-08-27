//
//  FirstTabCoordinator.swift
//  CoordinatorUIKit
//
//  Created by thaxz on 27/08/23.
//

import Foundation
import UIKit
import SwiftUI

class FirstTabCoordinator: Coordinator {
    
    var rootViewController: UINavigationController
    let viewModel = FirstTabViewModel()
    
    init(){
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    
    lazy var firstViewController: FirstViewController = {
        let vc = FirstViewController()
        vc.title = "First"
        vc.viewModel = viewModel
        vc.showDetailRequested = { [weak self] in
            self?.goToDetail()
        }
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([firstViewController], animated: false)
    }
    
    func goToDetail(){
        let detailViewController = UIHostingController(rootView: FirstDetailView(vm: viewModel))
        rootViewController.pushViewController(detailViewController, animated: true)
    }
    
}
