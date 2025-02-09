//
//  LoginBuilder.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import Foundation

class LoginBuilder {
    static func build() -> LoginViewController {
        let vc = LoginViewController.createFromNib()
        
        let viewModel: LoginViewModel = {
            let dependency = LoginViewModel.Dependency()
            return LoginViewModel(dependency: dependency)
        }()
        
        vc.viewModel = viewModel
        
        return vc
    }
}
