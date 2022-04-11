//
//  CardView.swift
//  ICP_Commons_iOS
//
//  Created by felipecambas on 11/4/22.
//

import UIKit

class CardView: UIView {

    override func draw(_ rect: CGRect) {
        // Drawing code
         layer.cornerRadius = 20
         layer.masksToBounds = true
    }

}
