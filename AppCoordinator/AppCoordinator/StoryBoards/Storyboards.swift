//
//  StoryboardsEnum.swift
//  AppCoordinator
//
//  Created by nguyen thanh tan on 06/11/2023.
//

import UIKit

enum Storyboards: String {
    case items = "Items"
    
    var storyboard: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
}
