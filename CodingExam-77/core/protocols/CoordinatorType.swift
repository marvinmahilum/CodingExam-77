//
//  CoordinatorType.swift
//  CodingExam-77
//
//  Created by Marvin on 2/8/25.
//

import UIKit

import UIKit

protocol CoordinatorType: AnyObject {
    
    var childCoordinators: [CoordinatorType] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

extension CoordinatorType {
    
    func add(_ childCoordinator: CoordinatorType) {
        childCoordinators.append(childCoordinator)
    }
    
    func remove(_ childCoordinator: CoordinatorType) {
        childCoordinators.removeAll(where: { $0 === childCoordinator })
    }
    
}
