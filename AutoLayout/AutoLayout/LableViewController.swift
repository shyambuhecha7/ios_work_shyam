//
//  LableViewController.swift
//  AutoLayout
//
//  Created by Shyam Buhecha on 08/06/23.
//

import UIKit

class LableViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!

    @IBOutlet weak var lbl2Message: UILabel!

    
    @IBOutlet weak var lblAttributed: UILabel!
   
    @IBOutlet weak var btnChangeProperty: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let arrayOfPerson = ["Shyam","Darshan", "Shubham"]
        lblMessage.text = "Hello Good Morning Hello Good Morning Hello Good Morning Hello Good Morning Hello Good MorningHello Good Morning Hello Good Morning"
        lblMessage.font = UIFont.systemFont(ofSize: 30)
        lblMessage.textColor = .red
        lblMessage.sizeToFit()
        lblMessage.highlightedTextColor = UIColor.green
        lblMessage.numberOfLines = 2
        lblMessage.textAlignment = NSTextAlignment.center
        lblMessage.lineBreakMode = NSLineBreakMode.byTruncatingMiddle
        lblMessage.lineBreakStrategy = NSParagraphStyle.LineBreakStrategy.hangulWordPriority
        lblMessage.adjustsFontSizeToFitWidth = true
        lblMessage.alpha = 1
        
        
        lbl2Message.isEnabled = false
        lbl2Message.backgroundColor = .blue
        lbl2Message.isHidden = true
        lbl2Message.isHidden = false
        lbl2Message.isUserInteractionEnabled = true
        lbl2Message.adjustsFontSizeToFitWidth = true
        
        //Sizing the label’s text
        lblMessage.adjustsFontSizeToFitWidth = true
        
        //highlite
        lbl2Message.isHighlighted = false
        lbl2Message.highlightedTextColor = UIColor.systemPink
        
        //shadow
        lbl2Message.shadowColor = UIColor.black
        lbl2Message.isUserInteractionEnabled = true
        lbl2Message.preferredMaxLayoutWidth = 30
        lblAttributed.font = UIFont(name: "The Time Of Romans", size: 40)
        
        
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
