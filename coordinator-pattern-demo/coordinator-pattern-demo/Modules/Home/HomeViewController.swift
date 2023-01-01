//
//  HomeViewController.swift
//  coordinator-pattern-demo
//
//  Created by Abhishek Ravi on 30/12/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Home"
        self.view.backgroundColor = UIColor.white
    }
    
    
    @IBAction func buttonAboutAction(_ sender: Any) {
        let viewController = AboutViewController(nibName: "AboutViewController", bundle: nil)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
 
    
    @IBAction func buttonLogoutAction(_ sender: Any) {
        let viewController = LoginViewController(nibName: "LoginViewController", bundle: nil)
        let navigationController = UINavigationController(rootViewController: viewController)
        
        UIApplication.shared.keyWindow?.rootViewController = navigationController
    }
    
}
