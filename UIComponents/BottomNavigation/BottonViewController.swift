//
//  BottonViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 22/06/23.
//

import UIKit

class BottonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        title = "Present and Dismiss"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openBottomSheet(_ sender: Any) {
        let secondVc = SheetViewController()
        secondVc.modalPresentationStyle = .fullScreen
        view.backgroundColor = .yellow
        present(secondVc, animated: true, completion: nil)
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
