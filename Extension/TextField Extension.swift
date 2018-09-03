//
//  TextField Extension.swift
//  classhw
//
//  Created by kiran on 9/2/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

extension UITextField {
    func textFieldStyle() {
        self.borderStyle = .none
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.font = UIFont(name: "Avenir", size: 17)
        self.textColor = UIColor.lightGray
        //self.frame.size.height = 150
       // self.layer.borderColor = UIColor(r: 34/255, g: 140/255, b: 204/255, a: 1).cgColor
        
        /* Paddings */
        self.leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 10, height: 10))
        self.leftViewMode = UITextField.ViewMode.always
        self.rightView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 10, height:10 ))
        self.rightViewMode = UITextField.ViewMode.always
       // self.layer.backgroundColor  = UIColor.brown.cgColor
        
//        let attributes = [
//            kCTForegroundColorAttributeName: UIColor(r: 34, g: 140, b: 204, a: 1),
//            kCTFontAttributeName : UIFont(name: "HelveticaNeue-Thin", size: 16)! // Note the !
//        ]
//        self.attributedPlaceholder = NSAttributedString(string: "Email", attributes:attributes)
        
        /* Shadow */
       // self.layer.shadowRadius = 1
       // self.layer.shadowColor = UIColor.red.cgColor
//        self.layer.shadowOffset = CGSize(width: 1, height: 0)
//        self.layer.shadowOpacity = 0.6
//        self.clipsToBounds = true

    }
}
