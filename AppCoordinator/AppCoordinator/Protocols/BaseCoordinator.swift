//
//  BaseCoordinator.swift
//  AppCoordinator
//
//  Created by Tan Thanh Nguyen on 2/11/23.
//

import Foundation

class BaseCoordinator: Coordinator {
    
    // MARK: - Properties
    
    var childCoordinators = [Coordinator]()
    
    // MARK: - Methods
    
    
    /// Add only unit coordinator
    /// - Parameter coordinator: a coordinator
    func addDependency(_ coordinator: Coordinator) {
        guard !childCoordinators.contains(where: { $0 === coordinator }) else { return }
        childCoordinators.append(coordinator)
    }
    
    func removeDependency(_ coordinator: Coordinator?) {
        guard let coordinator = coordinator, !childCoordinators.isEmpty else { return }
        
        // Clear child-coordinators recursively
        if let coordinator = coordinator as? BaseCoordinator, !coordinator.childCoordinators.isEmpty {
            coordinator.childCoordinators
                .filter { $0 !== coordinator }
                .forEach { $0.removeDependency($0) }
        }
        
        // Clear coordinator
        for (index, element) in childCoordinators.enumerated() where element === coordinator {
            child
        }
        
    }
}
