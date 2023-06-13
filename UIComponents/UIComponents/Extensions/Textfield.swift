//
//  Textfield.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 12/06/23.
//

import UIKit

extension UITextField {
    func addTextFieldBorderStyle( borderWidth: Double, borderColor: CGColor, cornerRadius: Int ) {
        self.layer.cornerRadius = CGFloat(cornerRadius)
        self.layer.borderWidth = CGFloat(borderWidth)
        self.layer.borderColor = borderColor
    }
    
   
    func addLeftImageToTextView(ending img: UIImage) {
        let leftImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        leftImageView.image = img
        self.leftView = leftImageView
        
        self.leftViewMode = .always
        
       // self.directionalLayoutMargins.leading = 10
    }
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


