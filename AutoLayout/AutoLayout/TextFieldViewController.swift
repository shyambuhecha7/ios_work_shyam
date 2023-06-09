//
//  TextFieldViewController.swift
//  AutoLayout
//
//  Created by Shyam Buhecha on 09/06/23.
//

import UIKit

class TextFieldViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textfieldEmail: UITextField!
    
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        let overlayButton = UIButton(type: .custom)
        let userImage = UIImage(named: "user")
        overlayButton.setImage(userImage, for: .normal)
//        overlayButton.addTarget(self, action: #selector(displayBookmarks),
//            for: .touchUpInside)
    
        overlayButton.sizeToFit()
        
  
        
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldBeginEditing", textfield.text!)
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing",textfield.text!)
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing",textfield.text!)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
      print("textFieldDidEndEditing",textfield.text!)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("shouldChangeCharactersIn",textfield.text!)
        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
       print("textFieldDidChangeSelection",textfield.text!)
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("textFieldShouldClear",textfield.text!)
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn",textfield.text!)
        return true
    
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
