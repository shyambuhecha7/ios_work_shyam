import UIKit

class ForgetPasswordViewController: UIViewController {

    @IBOutlet weak var mySegmentController: UISegmentedControl!
    
   
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTexfield: UITextField!
    @IBOutlet weak var leftImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addPropertyToTextfield(emailTextfield)
        addPropertyToTextfield(passwordTexfield)
        
        setSegmentProperty(mySegmentController)
      
      
      
    }
    func addPropertyToTextfield(_ sender: UITextField) {
        sender.layer.borderWidth = 1.5
        sender.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        sender.layer.cornerRadius = 12
    }
    
    @IBAction func setSegmentProperty(_ sender: UISegmentedControl) {
        mySegmentController.layer.cornerRadius = 25
        mySegmentController.clipsToBounds = true
        
        switch mySegmentController.selectedSegmentIndex {
        case 0 :
            emailTextfield.isHidden = false
            passwordTexfield.isHidden = true
//            sagmentTextField.setLeftMarginInTextField(padding: 20.0)
            emailTextfield.setLeftPaddingWithImageInTextField(padding: 50.0, imageView: "mail")
        
        case 1 :
            emailTextfield.isHidden = true
            passwordTexfield.isHidden = false
            passwordTexfield.setLeftPaddingWithImageInTextField(padding: 50.0, imageView: "password")
        default:
            emailTextfield.isEnabled = true
            passwordTexfield.isHidden = true
        }
        
      
    }
    
}
