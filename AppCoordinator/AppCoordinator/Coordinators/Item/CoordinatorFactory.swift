//
//  CoordinatorFactory.swift
//  AppCoordinator
//
//  Created by nguyen thanh tan on 06/11/2023.
//

import Foundation

protocol CoordinatorFactoriable {
    func makeItemCoordinator(router: Router) -> Coordinator
}

class CoordinatorFactory: CoordinatorFactoriable {
    func makeItemCoordinator(router: Router) -> Coordinator {
        let coordinator = ItemCoordinator(factory: ModuleFactory(), router: router)
        return coordinator
    }
}
