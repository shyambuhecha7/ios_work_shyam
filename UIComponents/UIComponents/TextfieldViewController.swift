//
//  TextfieldViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 09/06/23.
//

import UIKit

class TextfieldViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextfield: UITextField!
    
    @IBOutlet weak var stackTextfield: UITextField!
    
    @IBOutlet weak var btnonClick: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextfield.delegate = self
        // Do any additional setup after loading the view.
    }
    
    

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool  {
        print("textFieldShouldBeginEditing")
        return true
    }// return NO to disallow editing.

    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        
        print("start to enter name")
    } // became first responder

   
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldBeginEditing")
        // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
     return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")// may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
    
        print("end editing")
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("shouldChangeCharactersIn")
        return true
    }// return NO to not change text

    

    func textFieldDidChangeSelection(_ textField: UITextField){
        print("textFieldDidChangeSelection")
        
    }

    

    func textFieldShouldClear(_ textField: UITextField) -> Bool{
        print("textFieldShouldClear")
        return true
    } // called when clear button pressed. return NO to ignore (no notifications)


    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        self.resignFirstResponder()
        return true
    }// called when 'return' key pressed. return NO to ignore.

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
