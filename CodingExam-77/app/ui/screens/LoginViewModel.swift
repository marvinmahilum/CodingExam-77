//
//  LoginViewModel.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import Foundation

protocol LoginViewModelInputs {
    
}

protocol LoginViewModelOutputs {
    
}

class LoginViewModel: LoginViewModelOutputs {
    
    struct Dependency {
        
    }
    
    init(dependency: Dependency) {
        self.dependency = dependency
    }
    
    var inputs: LoginViewModelInputs { return self }
    var outputs: LoginViewModelOutputs { return self }
    
    private var dependency: Dependency
    
    deinit {
        print("--Deallocating \(self)")
    }
}

extension LoginViewModel: LoginViewModelInputs {
    
}
