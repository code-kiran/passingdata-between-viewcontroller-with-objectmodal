//
//  LandingVC1.swift
//  classhw
//
//  Created by kiran on 9/3/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

class LandingVC1: UIViewController {

    var name: String?
    @IBOutlet weak var nameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text! = name!
    }

}
