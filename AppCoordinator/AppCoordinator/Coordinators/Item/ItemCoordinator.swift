//
//  ItemCoordinator.swift
//  AppCoordinator
//
//  Created by nguyen thanh tan on 06/11/2023.
//

import Foundation

class ItemCoordinator: BaseCoordinator {
    private let factory: ItemModuleFactory
    private let router: Router
    
    override func start() {
        showItemList()
    }
    
    init(factory: ItemModuleFactory, router: Router) {
        self.factory = factory
        self.router = router
    }
    
    func showItemList() {
        let itemsView = factory.makeItemsOutput()
        itemsView.onItemSelect = { [weak self] item in
            self?.showItemDetail(item)
        }
        router.setRootModule(itemsView, animated: true)
    }
    
    func showItemDetail(_ item: ItemList) {
        let itemDetailsView = factory.makeItemDetailOutput(item)
        router.push(itemDetailsView, animated: true)
    }
    
}
