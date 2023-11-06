//
//  ModuleFactory.swift
//  AppCoordinator
//
//  Created by nguyen thanh tan on 06/11/2023.
//

import Foundation

class ModuleFactory: ItemModuleFactory {
    
    // MARK: - ItemModuleFactory
    
    func makeItemsOutput() -> ItemListViewController {
        let controller = ItemListViewController.controllerFromStoryboard(.items)
        return controller
    }
    
    func makeItemDetailOutput(_ item: ItemList) -> ItemDetailViewController {
        let controller = ItemDetailViewController.controllerFromStoryboard(.items)
        controller.item = item
        return controller
    }
}

// MARK: - Flow factories

protocol ItemModuleFactory {
    func makeItemsOutput() -> ItemListViewController
    func makeItemDetailOutput(_ item: ItemList) -> ItemDetailViewController
}
//class ItemModuleFactory {
//    func makeItemDetailOutput(item: ItemList) -> ItemDetailViewController {
//        let controller = ItemDetailViewController.init(nibName: ItemDetailViewController.nameOfTheClass, bundle: nil)
//        controller.item = item
//        return controller
//    }
//}

