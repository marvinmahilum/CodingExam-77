//
//  WelcomeViewController.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import RxCocoa
import RxSwift
import UIKit

protocol WelcomeViewControllerDelegate: AnyObject {
    func dismiss(_ vc: WelcomeViewController)
}

class WelcomeViewController: BaseViewController, CreatedFromNib {
    
    weak var delegate: WelcomeViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        initViewModel()
    }
    
    var viewModel: WelcomeViewModel!
    var inputs: WelcomeViewModelInputs { return viewModel.inputs }
    var outputs: WelcomeViewModelOutputs { return viewModel.outputs }
    
    private var disposeBag = DisposeBag()
    
    deinit {
        print("--Deallocating \(self)")
    }
    
}

// MARK: - Init views
extension WelcomeViewController {
    private func initViews() {
    }
}

// MARK: - Bindings
extension WelcomeViewController {
    private func initViewModel() {
        bindInputs()
        bindOutputs()
    }
    
    private func bindInputs() {
        
    }
    
    private func bindOutputs() {
        
    }
}
