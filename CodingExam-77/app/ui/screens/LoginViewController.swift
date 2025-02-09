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
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    weak var delegate: LoginViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        initViewModel()
    }
    
    var viewModel: LoginViewModel!
    var inputs: LoginViewModelInputs { return viewModel.inputs }
    var outputs: LoginViewModelOutputs { return viewModel.outputs }
    
    deinit {
        print("--Deallocating \(self)")
    }

}

// MARK: - Init views
extension LoginViewController {
    private func initViews() {
        
    }
}

// MARK: - Bindings
extension LoginViewController {
    private func initViewModel() {
        bindInputs()
        bindOutputs()
    }
    
    private func bindInputs() {
        
    }
    
    private func bindOutputs() {
        
    }
}
