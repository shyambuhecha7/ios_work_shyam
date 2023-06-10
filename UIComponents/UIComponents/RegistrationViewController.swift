//
//  RegistrationViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 10/06/23.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    @IBOutlet weak var textfieldEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textfieldEmail.borderStyle = .roundedRect
        textfieldEmail.placeholder = "Enter Email"
        textfieldEmail.layer.borderWidth = 2
        
        addLeftImage(textField: textfieldEmail, ending: UIImage(named: "mail") ?? UIImage())
        addTextFieldBorderStyle(textField: textfieldEmail, borderWidth: 1.5, borderColor: UIColor.white.cgColor, cornerRadius: 12)
        
        
    }
    
    func addLeftImage(textField: UITextField,ending img: UIImage) {
        let leftImageView = UIImageView(frame: CGRect(x: 3, y: 0, width: 30, height: 30))
        leftImageView.image = img
        textField.leftView = leftImageView
        textField.leftViewMode = .always
       
    }
    
    func addTextFieldBorderStyle(textField: UITextField , borderWidth: Double, borderColor: CGColor, cornerRadius: Int ) {
        textField.layer.cornerRadius = CGFloat(cornerRadius)
        textField.layer.borderWidth = CGFloat(borderWidth)
        textField.layer.borderColor = borderColor
    
    }
    
}
