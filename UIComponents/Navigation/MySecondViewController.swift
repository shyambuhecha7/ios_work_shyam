//
//  MySecondViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 19/06/23.
//

import UIKit

class MySecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func gotoThird(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "NavStoryboard", bundle:nil)
        guard let thirdVC = storyBoard.instantiateViewController(withIdentifier: "MyThirdViewController") as? MyThirdViewController else {return}
        self.navigationController?.pushViewController(thirdVC, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
