//
//  WelcomeViewModel.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import RxCocoa
import RxSwift
import UIKit

protocol WelcomeViewModelInputs {
}

protocol WelcomeViewModelOutputs {
}

class WelcomeViewModel: WelcomeViewModelOutputs {
    
    // MARK: - Init
    struct Dependency {
        
    }
    
    init(dependency: Dependency) {
        self.dependency = dependency
    }
    
    var inputs: WelcomeViewModelInputs { return self }
    var outputs: WelcomeViewModelOutputs { return self }
    
    // MARK: - Outputs
    
    
    // MARK: - Private
    private var dependency: Dependency
    
    // MARK: - Deinit
    deinit {
        print("--Deallocating \(self)")
    }
}

// MARK: - Input(s)
extension WelcomeViewModel: WelcomeViewModelInputs {
}
