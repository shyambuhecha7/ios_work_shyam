//
//  RegistrationViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 10/06/23.
//

import UIKit

class RegistrationViewController: UIViewController{
    
    @IBOutlet weak var textfieldUsername: UITextField!

    @IBOutlet weak var textfieldEmail: UITextField!
    
    @IBOutlet weak var textfieldPassword: UITextField!
    
    @IBOutlet weak var textfieldConfirmPassword: UITextField!
    
    @IBOutlet weak var btnRegister: UIButton!
    
    @IBOutlet weak var confirmPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        textfieldEmail.addLeftImageToTextView( ending: UIImage(named: "mail") ?? UIImage())
        textfieldEmail.addTextFieldBorderStyle( borderWidth: 1.2, borderColor: UIColor.white.cgColor, cornerRadius: 12)
        
        textfieldUsername.addLeftImageToTextView( ending: UIImage(named: "person") ?? UIImage())
        textfieldUsername.addTextFieldBorderStyle( borderWidth: 1.2, borderColor: UIColor.white.cgColor, cornerRadius: 12)
        
        textfieldPassword.addLeftImageToTextView( ending: UIImage(named: "password") ?? UIImage())
        textfieldPassword.addTextFieldBorderStyle( borderWidth: 1.2, borderColor: UIColor.white.cgColor, cornerRadius: 12)
        

        textfieldConfirmPassword.addLeftImageToTextView( ending: UIImage(named: "password") ?? UIImage())
        textfieldConfirmPassword.addTextFieldBorderStyle( borderWidth: 1.2, borderColor: UIColor.white.cgColor, cornerRadius: 12)
        
        btnRegister.layer.cornerRadius = 12
        
        
       // textfieldEmail.setLeftPaddingPoints(5.0)
        
    }
  
    
    
    
    @IBAction func changeBtnTitle(_ sender: UIButton) {
      
        sender.setTitle("Click", for: UIControl.State.normal)
        
        sender.tintColor = UIColor.yellow
    }
  
    
   
    
}
