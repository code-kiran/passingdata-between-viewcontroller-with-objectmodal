//
//  DataController.swift
//  classhw
//
//  Created by kiran on 9/3/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

class UserController: NSObject {
    
    static var users: [[String: AnyObject]] = []
    
    class func addUser(newUserr: [String:AnyObject]) {
        users.append(newUserr)
    }
    
    class func removeUser(atIndex: Int) {
        users.remove(at: atIndex)
    }
    
    }


