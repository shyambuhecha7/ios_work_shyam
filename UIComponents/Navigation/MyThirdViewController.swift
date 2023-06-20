//
//  MyThirdViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 20/06/23.
//

import UIKit

class MyThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

    @IBAction func userLogout(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "NavStoryboard", bundle:nil)
       
        self.navigationController?.popToRootViewController(animated: true)
    }
   
 
}
                                         
