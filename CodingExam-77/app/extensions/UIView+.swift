//
//  UIView+.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import UIKit

extension UIView {
    
    @IBInspectable
    var cornerradius: CGFloat {
        get {
            return layer.cornerRadius
        } set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
