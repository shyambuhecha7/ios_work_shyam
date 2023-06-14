import UIKit

class ForgetPasswordViewController: UIViewController {

    @IBOutlet weak var mySegmentController: UISegmentedControl!
    
    @IBOutlet weak var sagmentTextField: UITextField!
    
    @IBOutlet weak var leftImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        sagmentTextField.layer.borderWidth = 1.5
        sagmentTextField.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        sagmentTextField.layer.cornerRadius = 12
       
        
        
        
      
      
      
    }
    
    @IBAction func setSegmentProperty(_ sender: UISegmentedControl) {
        mySegmentController.layer.cornerRadius = 25
        mySegmentController.clipsToBounds = true
        
        switch mySegmentController.selectedSegmentIndex {
        case 0 :
            sagmentTextField.placeholder = "Email"
//             sagmentTextField.setLeftMarginInTextField(padding: 20.0)
            sagmentTextField.setLeftPaddingWithImageInTextField(padding: 20.0, imageView: "mail")
        
        case 1 :
            sagmentTextField.placeholder = "Phone"
            sagmentTextField.setLeftPaddingWithImageInTextField(padding: 10.0, imageView: "password")
        default:
            sagmentTextField.placeholder = "Phone"
        }
        
      
    }
    
}
