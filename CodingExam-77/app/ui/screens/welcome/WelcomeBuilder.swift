//
//  WelcomeBuilder.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import Foundation

class WelcomeBuilder {
    static func build() -> WelcomeViewController {
        let vc = WelcomeViewController.createFromNib()
        
        let viewModel: WelcomeViewModel = {
            let dependency = WelcomeViewModel.Dependency()
            return WelcomeViewModel(dependency: dependency)
        }()
        
        vc.viewModel = viewModel
        
        return vc
    }
}
