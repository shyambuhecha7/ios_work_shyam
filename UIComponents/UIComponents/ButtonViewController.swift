//
//  ButtonViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 09/06/23.
//

import UIKit

class ButtonViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var lblShowUserDetails: UILabel!
    
    @IBOutlet weak var nameOfUSer: UITextField!
    
    
    @IBOutlet weak var stackOfUser: UITextField!
    
    @IBOutlet weak var colorBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameOfUSer.delegate = self
        stackOfUser.delegate = self

    }
    
@IBAction func configureButton(_ sender: UIButton) {
        sender.setTitle("bjkhrw", for: .selected)
    }
    //textfield
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.becomeFirstResponder()
        

    }
       
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        nameOfUSer.resignFirstResponder()
        stackOfUser.becomeFirstResponder()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let maxLengthOdInput = 8
        let currentString =  textField.text ?? ""
        let newString = (currentString as NSString).replacingCharacters(in: range, with: string)
        return newString.count <= maxLengthOdInput
        
    }
    
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    //Button Click
    @IBAction func btnSubmit(_ sender: Any) {
        lblShowUserDetails.text = "Username : " + (self.nameOfUSer.text ?? " ") + " \n" +  "User Stack : "  + (self.stackOfUser.text ?? " ")
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
