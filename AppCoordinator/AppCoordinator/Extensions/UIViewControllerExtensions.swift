//
//  UIViewControllerExtensions.swift
//  AppCoordinator
//
//  Created by nguyen thanh tan on 06/11/2023.
//

import UIKit

extension UIViewController {
    class func controllerFromStoryboard(_ storyboard: Storyboards) -> Self {
        return storyboard.storyboard.instantiateViewController(withIdentifier: nameOfTheClass) as! Self
    }
}
