//
//  LoginNavViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 20/06/23.
//

import UIKit

class LoginNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToFirstPage(_ sender: Any) {
        guard let vc =  storyboard?.instantiateViewController(withIdentifier: "FirstPageViewController") as? FirstPageViewController else { return }
        navigationController?.pushViewController(vc, animated: true)
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
