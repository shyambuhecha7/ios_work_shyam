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
    
    func setLeftMarginInTextField(padding: Double) {
            let leftView = UIView()
            leftView.frame = CGRect.init(x: 0, y: 0, width: padding, height: self.frame.size.height)
            self.leftView = leftView
            self.leftViewMode = .always
        }
        
        func setRightMarginInTextField(padding: Double) {
            let rightView = UIView()
            rightView.frame = CGRect.init(x: 0, y: 0, width: padding, height: self.frame.size.height)
            self.rightView = rightView
            self.rightViewMode = .always
        }
        
       func setLeftPaddingWithImageInTextField(padding: Double, imageView: String) {
            let leftView = UIView()
            leftView.frame = CGRect.init(x: 0.0, y: 0.0, width: padding, height: self.frame.size.height)
            let imgView = UIImageView()
            imgView.frame = CGRect.init(x: 20, y: 20, width: padding-35, height: self.frame.size.height - 35.0)
            imgView.tintColor = UIColor.black
            imgView.image = UIImage.init(named: imageView)
            leftView.addSubview(imgView)
            self.leftView = leftView
            self.leftViewMode = .whileEditing
        }
        
        func setRightPaddingWithImageInTextField(padding: Double, imgName: String) {
            let rightView = UIView()
            rightView.frame = CGRect.init(x: 0, y: 0, width: padding, height: self.frame.size.height)
            let imgView = UIImageView()
            imgView.frame = CGRect.init(x: 10, y: 12, width: padding-25, height: self.frame.size.height - 25.0)
            imgView.tintColor = UIColor.white
            imgView.image = UIImage.init(named: imgName)
            rightView.addSubview(imgView)
            self.rightView = rightView
            self.rightViewMode = .always
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


