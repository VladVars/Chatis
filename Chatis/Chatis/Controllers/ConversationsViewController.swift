//
//  ViewController.swift
//  Chatis
//
//  Created by VladVarsotski on 15.01.23.
//

import UIKit
import FirebaseAuth

class ConversationsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        validateAuth()
    }
    
    private func validateAuth() {
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let logVC = LoginViewController()
            let nav = UINavigationController(rootViewController: logVC)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }
}
