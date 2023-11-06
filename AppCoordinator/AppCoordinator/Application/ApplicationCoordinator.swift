//
//  ApplicationCoordinator.swift
//  AppCoordinator
//
//  Created by nguyen thanh tan on 06/11/2023.
//

import Foundation

class ApplicationCoordinator: BaseCoordinator {
    private let coordinatorFactory: CoordinatorFactory
    private let router: Router
    
    init(coordinatorFactory: CoordinatorFactory, router: Router) {
        self.coordinatorFactory = coordinatorFactory
        self.router = router
    }
    
    override func start() {
        runItemFlow()
    }
    
    func runItemFlow() {
        let coordinator = coordinatorFactory.makeItemCoordinator(router: router)
        coordinator.start()
    }
}
