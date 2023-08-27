//
//  FirstViewController.swift
//  CoordinatorUIKit
//
//  Created by thaxz on 27/08/23.
//

import UIKit

class FirstViewController: UIViewController {

    var infoLabel: UILabel?
    var viewModel: FirstTabViewModel!
    var showDetailRequested: () -> () = {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupInfoLabel()
        setupButton()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        infoLabel?.text = "\(viewModel.name) with email \(viewModel.email)"
    }
    
    func setupButton(){
        let button = UIButton(frame: CGRect(x: 100, y: 500, width: 200, height: 60))
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Go To Detail", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func buttonAction(){
        showDetailRequested()
    }

    func setupInfoLabel(){
        let infoLabel = UILabel(frame: CGRect(x: 100, y: 300, width: 300, height: 60))
        self.view.addSubview(infoLabel)
        self.infoLabel = infoLabel
    }

}
