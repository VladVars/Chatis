//
//  ViewController.swift
//  Chatis
//
//  Created by VladVarsotski on 15.01.23.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLoggedIn {
            let logVC = LoginViewController()
            let nav = UINavigationController(rootViewController: logVC)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
            
        }
    }


}

