//
//  CustomTextField.swift
//  ICP_Commons_iOS
//
//  Created by felipecambas on 11/4/22.
//

import UIKit

class CustomTextField: UITextField {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 8
        layer.borderWidth = 1
        if #available(iOS 11.0, *) {
            layer.borderColor = UIColor(named: "MainBlue")?.cgColor
        } else {
            // Fallback on earlier versions
        }
        layer.masksToBounds = true
    }
}
