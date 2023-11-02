//
//  Coordinator.swift
//  AppCoordinator
//
//  Created by Tan Thanh Nguyen on 2/11/23.
//

import Foundation

protocol Coordinator: AnyObject {
    func start()
}

protocol CoordinatorOutput {
    var finishFlow: (() -> Void)? { get set }
}
