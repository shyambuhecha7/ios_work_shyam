//
//  FirstViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 19/06/23.
//

import UIKit

class MyFirstViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func goToSecond(_ sender: Any) {
//        guard let vc =  storyboard?.instantiateViewController(withIdentifier: "MySecondViewController") as? MySecondViewController else { return }
//        navigationController?.pushViewController(vc, animated: true)
        
        let vc1 = UIStoryboard.init(name: "NavStoryboard", bundle: Bundle.main).instantiateViewController(withIdentifier: "MySecondViewController") as? MySecondViewController
        self.navigationController?.pushViewController(vc1!, animated: true)
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
