//
//  LoginViewController.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import UIKit

protocol LoginViewControllerDelegate: AnyObject {
    func dismiss(_ vc: LoginViewController)
}

class LoginViewController: BaseViewController, CreatedFromNib {
    
    weak var delegate: LoginViewControllerDelegate?
    
    var viewModel: LoginViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    deinit {
        print("--Deallocating \(self)")
    }

}
