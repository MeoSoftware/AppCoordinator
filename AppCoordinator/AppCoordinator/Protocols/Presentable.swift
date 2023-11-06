//
//  Presentable.swift
//  AppCoordinator
//
//  Created by nguyen thanh tan on 06/11/2023.
//

import UIKit

protocol Presentable {
    func toPresent() -> UIViewController?
}

extension UIViewController: Presentable {
    func toPresent() -> UIViewController? {
        return self
    }
}
