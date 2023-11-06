//
//  ItemDetailViewController.swift
//  AppCoordinator
//
//  Created by nguyen thanh tan on 06/11/2023.
//

import UIKit

protocol ItemsDetailView: BaseView {}

class ItemDetailViewController: UIViewController {

    @IBOutlet weak var contentTextView: UITextView!
    
    var item: ItemList?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contentTextView.text = item?.title
    }

}

