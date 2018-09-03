//
//  homeViewController.swift
//  classhw
//
//  Created by kiran on 9/3/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
    }

}

class homeTableCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!

}


extension homeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserController.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! homeTableCell
        if let name = UserController.users[indexPath.row] ["name"] as? String {
           cell.nameLabel.text = name
        }
        if let email = UserController.users[indexPath.row]["email"] as? String {
            cell.emailLabel.text = email
        }
        
        if let password = UserController.users[indexPath.row]["password"] as? String {
            cell.passwordLabel.text = password
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "LandingVC") as? LandingVC1 {
        if let name1 = UserController.users[indexPath.row]["name"] as? String {
            vc.name = "hello" + "\n" + name1
        }
        self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}
