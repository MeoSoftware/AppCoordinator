//
//  NSObjectExtensions.swift
//  AppCoordinator
//
//  Created by nguyen thanh tan on 06/11/2023.
//

import Foundation

extension NSObject {
    class var nameOfTheClass: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
