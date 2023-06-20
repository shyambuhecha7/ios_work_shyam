//
//  FirstViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 19/06/23.
//

import UIKit

class MyFirstViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName.delegate = self
        userPassword.delegate = self

    }
    
    @IBAction func goToSecond(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "MySecondViewController") as? MySecondViewController else { return }
        navigationController?.pushViewController(vc, animated: true)
        
        UserDefaults.standard.set(userName.text, forKey: "user-name")
        UserDefaults.standard.set(userPassword.text, forKey: "user-password")
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
   
   

}
