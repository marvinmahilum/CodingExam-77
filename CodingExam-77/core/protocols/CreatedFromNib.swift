//
//  CreatedFromNib.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import UIKit

protocol CreatedFromNib {
    static func createFromNib() -> Self
}

extension CreatedFromNib where Self: UIViewController {
    static func createFromNib() -> Self {
        let nibName = String(describing: self)
        return Self.init(nibName: nibName, bundle: nil)
    }
}
