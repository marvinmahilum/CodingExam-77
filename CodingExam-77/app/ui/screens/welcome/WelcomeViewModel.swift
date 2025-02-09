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
    
    struct Dependency {
        
    }
    
    init(dependency: Dependency) {
        self.dependency = dependency
    }
    
    var inputs: WelcomeViewModelInputs { return self }
    var outputs: WelcomeViewModelOutputs { return self }
    
    private var dependency: Dependency
    
    deinit {
        print("--Deallocating \(self)")
    }
}

extension WelcomeViewModel: WelcomeViewModelInputs {
}
