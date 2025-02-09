//
//  LoginViewController.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import UIKit
import RxCocoa
import RxSwift

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
    
    private var disposeBag = DisposeBag()
    
    deinit {
        print("--Deallocating \(self)")
    }

}

// MARK: - Init views
extension LoginViewController {
    private func initViews() {
        initButtons()
    }
    
    private func initButtons() {
        loginButton
            .rx
            .tap
            .asDriver()
            .drive(onNext: { [weak self] _ in
                guard let self = self else { return }
                
                let username = self.usernameTextField.text
                let password = self.passwordTextField.text
                self.inputs.loginTapped(username: username, password: password)
                
            }).disposed(by: disposeBag)
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
        
        outputs
            .isLoginSuccess
            .asObservable()
            .subscribe(onNext: { [unowned self] (isLoginSuccess) in
                if isLoginSuccess {
                    
                } else {
                    let message = "The username or password you've entered is incorrect"
                    self.showAlert(type: .error, title: nil, message: message)
                }
            }).disposed(by: disposeBag)
    }
}
