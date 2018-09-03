//
//  RegisterVC.swift
//  classhw
//
//  Created by kiran on 9/2/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.textFieldStyle()
        emailTextField.textFieldStyle()
        passwordTextField.textFieldStyle()
        
    }
    
    var userDictionary = [String: AnyObject]()
    
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        updateDictionary()
        UserController.addUser(newUserr: userDictionary)
    }
    
    
    func updateDictionary(){
        userDictionary.updateValue(nameTextField!.text as AnyObject, forKey: "name")
        userDictionary.updateValue(emailTextField!.text as AnyObject, forKey: "email")
        userDictionary.updateValue(passwordTextField!.text as AnyObject, forKey: "password")
        
    }
    
    
    @IBAction func loginSignup(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
}
