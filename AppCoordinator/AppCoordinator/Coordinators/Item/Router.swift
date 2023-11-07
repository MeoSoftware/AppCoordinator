//
//  Router.swift
//  AppCoordinator
//
//  Created by nguyen thanh tan on 06/11/2023.
//

import Foundation
import UIKit

protocol Routable {
    func present(_ module: Presentable?, animated: Bool)
    
    func push(_ module: Presentable?, animated: Bool)
    func setRootModule(_ module: Presentable?, animated: Bool)
    
    func popModule(animated: Bool)
    func popToRootModule(animated: Bool)
}

class Router: Routable {
    private weak var rootViewController: UINavigationController?
    
    init(rootViewController: UINavigationController?) {
        self.rootViewController = rootViewController
    }
    
    func present(_ module: Presentable?, animated: Bool) {
        guard let controller = module?.toPresent() else { return }
        self.rootViewController?.present(controller, animated: animated)
    }
    
    func push(_ module: Presentable?, animated: Bool) {
        guard let controller = module?.toPresent() else { return }
        guard controller is UINavigationController == false else { assertionFailure("Deprecated push UINavigationController."); return }
        
        rootViewController?.pushViewController(controller, animated: animated)
    }
    
    func setRootModule(_ module: Presentable?, animated: Bool) {
        guard let controller = module?.toPresent() else { return }
        rootViewController?.setViewControllers([controller], animated: animated)
    }
    
    func popModule(animated: Bool) {
        rootViewController?.popViewController(animated: animated)
    }
    
    func popToRootModule(animated: Bool) {
        rootViewController?.popToRootViewController(animated: animated)
    }
}
