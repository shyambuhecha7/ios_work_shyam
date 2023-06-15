//
//  JobTypeViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 15/06/23.
//

import UIKit

class JobTypeViewController: UIViewController {

    @IBOutlet weak var switchselection: UISwitch!
    
    @IBOutlet weak var btnDesigner: UIButton!
    
    @IBOutlet weak var btnDeveloper: UIButton!
    
    @IBOutlet weak var btnMarketer: UIButton!
    
    @IBOutlet weak var btnSave: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        btnDesigner.setImage(UIImage(named: "check"), for: .selected)
        btnDesigner.setImage(UIImage(named: "rec"), for: .normal)
        
        btnDeveloper.setImage(UIImage(named: "check"), for: .selected)
        btnDeveloper.setImage(UIImage(named: "rec"), for: .normal)
        
        btnMarketer.setImage(UIImage(named: "check"), for: .selected)
        btnMarketer.setImage(UIImage(named: "rec"), for: .normal)
        
        btnSave.layer.cornerRadius = 16
        btnSave.clipsToBounds = true
    }

    @IBAction func setDesigner(_ sender: UIButton) {
        btnDesigner.isSelected = true
        btnDeveloper.isSelected = false
        btnMarketer.isSelected = false
       
        self.btnDesigner.setImage(UIImage(named: "check"), for: .selected)

        
    }
    
    @IBAction func setDeveloper(_ sender: UIButton) {
        btnDesigner.isSelected = false
        btnDeveloper.isSelected = true
        btnMarketer.isSelected = false
        self.btnDeveloper.setImage(UIImage(named: "check"), for: .selected)

    }
    
    @IBAction func setMarketer(_ sender: UIButton) {
        btnDesigner.isSelected = false
        btnDeveloper.isSelected = false
        btnMarketer.isSelected = true
        
        
        self.btnMarketer.setImage(UIImage(named: "check"), for: .selected)

    }
    
    
    @IBAction func setAllButton(_ sender: UISwitch) {
        
        if sender.isOn {
            self.btnDesigner.setImage(UIImage(named: "check"), for: .normal)
            self.btnDeveloper.setImage(UIImage(named: "check"), for: .normal)
            self.btnMarketer.setImage(UIImage(named: "check"), for: .normal)
        }else {
            self.btnDesigner.setImage(UIImage(named: "rec"), for: .normal)
            self.btnDeveloper.setImage(UIImage(named: "rec"), for: .normal)
            self.btnMarketer.setImage(UIImage(named: "rec"), for: .normal)
            
            btnDesigner.isSelected = false
            btnDeveloper.isSelected = false
            btnMarketer.isSelected = false
        }
    }
    
    func changeStates() {
      
    }
}
