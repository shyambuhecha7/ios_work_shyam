//
//  PHPickerViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 15/06/23.
//

import UIKit
import PhotosUI

class PHPickerViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var configuration = PHPickerConfiguration(photoLibrary: .shared())
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func selectImage(_ sender: Any) {
        
      //
        
    }
    

}
