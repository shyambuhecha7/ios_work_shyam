//
//  UITabViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 19/06/23.
//

import UIKit

class UITabViewController: UITabBarController {

    @IBOutlet weak var myTabar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
    }
    
}

extension UITabViewController: UITabBarControllerDelegate {
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
    }
    override func tabBar(_ tabBar: UITabBar, didBeginCustomizing items: [UITabBarItem]) {
        
    }
}
