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
    
    // MARK: - Outlets
    
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        initViewModel()
    }
    
    // MARK: - ViewModel
    var viewModel: WelcomeViewModel!
    var inputs: WelcomeViewModelInputs { return viewModel.inputs }
    var outputs: WelcomeViewModelOutputs { return viewModel.outputs }
    
    // MARK: - Private
    private var disposeBag = DisposeBag()
    
    // MARK: - Deinit
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
