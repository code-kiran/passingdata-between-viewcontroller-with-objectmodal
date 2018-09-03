//
//  LoginVC.swift
//  classhw
//
//  Created by kiran on 9/2/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.textFieldStyle()
        passwordTextField.textFieldStyle()

       
    }
    
    @IBAction func loginButton(_ sender: Any) {
        
        
        
    }
    @IBAction func loginSignup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
