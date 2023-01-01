//
//  HomeViewController.swift
//  coordinator-pattern-demo
//
//  Created by Abhishek Ravi on 30/12/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    weak var coordinator: AppCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Home"
        self.view.backgroundColor = UIColor.white
    }
    
    
    @IBAction func buttonAboutAction(_ sender: Any) {
        coordinator?.routeToAbout()
    }
 
    
    @IBAction func buttonLogoutAction(_ sender: Any) {
        
    }
    
}
