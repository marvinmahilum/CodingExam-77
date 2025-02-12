//
//  LoginViewModel.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import RxCocoa
import RxSwift
import UIKit

protocol LoginViewModelInputs {
    func loginTapped(username: String?, password: String?)
}

protocol LoginViewModelOutputs {
    var errorMessage: BehaviorRelay<String> { get }
    var isLoginSuccess: PublishRelay<Bool> { get }
}

class LoginViewModel: LoginViewModelOutputs {
    
    // MARK: - Init
    struct Dependency {
        
    }
    
    init(dependency: Dependency) {
        self.dependency = dependency
    }
    
    var inputs: LoginViewModelInputs { return self }
    var outputs: LoginViewModelOutputs { return self }
    
    // MARK: - Outputs
    let errorMessage: BehaviorRelay<String> = BehaviorRelay(value: "")
    let isLoginSuccess: PublishRelay<Bool> = PublishRelay()
    
    // MARK: - Private
    private var dependency: Dependency
    
    // MARK: - Deinit
    deinit {
        print("--Deallocating \(self)")
    }
}

// MARK: - Input(s)
extension LoginViewModel: LoginViewModelInputs {
    func loginTapped(username: String?, password: String?) {
        
        guard let uname = username, !uname.isEmpty else {
            self.errorMessage.accept("Username field should not be empty")
            return
        }
        guard let pword = password, !pword.isEmpty else {
            self.errorMessage.accept("Password field should not be empty")
            return
        }
        
        if uname == "admin" && pword == "password" {
            self.isLoginSuccess.accept(true)
        } else {
            self.isLoginSuccess.accept(false)
        }
    }
}
