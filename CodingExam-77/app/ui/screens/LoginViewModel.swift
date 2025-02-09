//
//  LoginViewModel.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import Foundation
import RxCocoa
import RxSwift
import UIKit

protocol LoginViewModelInputs {
    func loginTapped(username: String?, password: String?)
}

protocol LoginViewModelOutputs {
    var isLoginSuccess: PublishRelay<Bool> { get }
}

class LoginViewModel: LoginViewModelOutputs {
    
    struct Dependency {
        
    }
    
    init(dependency: Dependency) {
        self.dependency = dependency
    }
    
    var inputs: LoginViewModelInputs { return self }
    var outputs: LoginViewModelOutputs { return self }
    
    let isLoginSuccess: PublishRelay<Bool> = PublishRelay()
    
    private var dependency: Dependency
    
    deinit {
        print("--Deallocating \(self)")
    }
}

extension LoginViewModel: LoginViewModelInputs {
    func loginTapped(username: String?, password: String?) {
        
        if username == "admin" && password == "password" {
            self.isLoginSuccess.accept(true)
        } else {
            self.isLoginSuccess.accept(false)
        }
    }
    
}
