//
//  ViewController.swift
//  classhw
//
//  Created by kiran on 9/2/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var btnLogin: UIButton!
    @IBAction func btnLogin(_ sender: Any) {
        
    //    if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginVC") as? LoginVC {
           // viewController.newsObj = newsObj
  //          self.navigationController?.pushViewController(viewController, animated: true)
//            if let navigator = navigationController {
//                navigator.pushViewController(viewController, animated: true)
//            }
        
        guard let navigationController = storyboard?.instantiateViewController(withIdentifier: "NavigationLogin") else {
            return
        }
        present(navigationController, animated: true, completion: nil)
        print("logintapped")
    }
    
    @IBAction func btnRegister(_sender: Any){
        
        guard let navigationController = storyboard?.instantiateViewController(withIdentifier: "NavigationRegister") else {return}
        present(navigationController, animated: true, completion: nil)
    }
}

