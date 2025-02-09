//
//  MainCoordinator.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import UIKit

class MainCoordinator: CoordinatorType {
    var childCoordinators: [CoordinatorType] = []
    
    var navigationController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        let vc = LoginBuilder.build()
        vc.delegate = self
        vc.modalPresentationStyle = .fullScreen
        navigationController.pushViewController(vc, animated: true)
    }
    
}

extension MainCoordinator: LoginViewControllerDelegate {
    func dismiss(_ vc: LoginViewController) {
        
    }
}
