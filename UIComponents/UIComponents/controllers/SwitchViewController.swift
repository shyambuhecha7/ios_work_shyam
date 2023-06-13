//
//  SwitchViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 12/06/23.
//

import UIKit

class SwitchViewController: UIViewController {
    
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBOutlet var myBg: UIView!
    
    @IBOutlet weak var mySlider: UISlider!
    
    @IBOutlet weak var myStepper: UIStepper!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myProgressView: UIProgressView!
    var progressValue = 0.0
    
    var timer: Timer!
    
    //UISwitch
    @IBAction func changeBgColor(_ sender: UISwitch) {
        if sender.isOn {
            myBg.backgroundColor = .white
            mySwitch.thumbTintColor = .black
            mySwitch.onTintColor = .lightGray
            
            myLabel.textColor = .black
        }else {
            myBg.backgroundColor = .black
            mySwitch.thumbTintColor = .white
            mySwitch.onTintColor = .black
            
            myLabel.textColor = .white
        }
    }
    
    //Slider
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mySwitch.isOn = false
        
        mySlider.minimumValue = 0
        mySlider.maximumValue = 1
        mySlider.value = 1
        
        //for progressbar
        self.perform(#selector(setUpProgress), with: nil, afterDelay: 0.1)
        
        //stepper
        myStepper.maximumValue = 10
        myStepper.minimumValue = 1
        myStepper.stepValue = 1
        myStepper.isContinuous = true
        myStepper.autorepeat = true
        
       
      
        
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        myBg.alpha = Double(sender.value)
        sender.setThumbImage(UIImage(named: "search (1)"), for: .normal)
        sender.setThumbImage(UIImage(named: "search (1)"), for: .highlighted)
        sender.setThumbImage(UIImage(named: "search (1)"), for: .disabled)
    }
    
    //
    @objc func setUpProgress() {
      progressValue = progressValue + 0.01
        self.myProgressView.progress = Float(progressValue)
        if progressValue != 1.0 {
            self.perform(#selector(setUpProgress), with: nil, afterDelay: 0.5)
        }
    }
    
    @IBAction func stepperValueChange(_ sender: UIStepper) {
      
        myLabel.text = sender.value.description
    }
}
