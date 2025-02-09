//
//  LoginViewController.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import RxCocoa
import RxSwift
import UIKit

protocol LoginViewControllerDelegate: AnyObject {
    func dismiss(_ vc: LoginViewController)
    func goToWelcomeScreen(_ vc: LoginViewController)
}

class LoginViewController: BaseViewController, CreatedFromNib {
    
    weak var delegate: LoginViewControllerDelegate?
    
    // MARK: - Outlets
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        initViewModel()
    }
    
    // MARK: - ViewModel
    var viewModel: LoginViewModel!
    var inputs: LoginViewModelInputs { return viewModel.inputs }
    var outputs: LoginViewModelOutputs { return viewModel.outputs }
    
    // MARK: - Private
    private var disposeBag = DisposeBag()
    
    // MARK: - Deinit
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
            .errorMessage
            .asDriver()
            .filter({ !$0.isEmpty })
            .drive(onNext: { [unowned self] (errorMessage) in
                self.showAlert(type: .error, title: nil, message: errorMessage)
            }).disposed(by: disposeBag)
        
        outputs
            .isLoginSuccess
            .asObservable()
            .subscribe(onNext: { [unowned self] (isLoginSuccess) in
                if isLoginSuccess {
                    self.usernameTextField.text = ""
                    self.passwordTextField.text = ""
                    self.usernameTextField.becomeFirstResponder()
                    self.delegate?.goToWelcomeScreen(self)
                    
                } else {
                    let message = "The username or password you've entered is incorrect"
                    self.showAlert(type: .error, title: nil, message: message)
                }
            }).disposed(by: disposeBag)
    }
}
