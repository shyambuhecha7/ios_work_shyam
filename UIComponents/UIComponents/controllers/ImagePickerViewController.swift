import UIKit

class ImagePickerViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var selectBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
     

  
    }
    
    @IBAction func selectPhotoPress(_ sender: UIButton) {
        let imagePickerVC = UIImagePickerController()
        imagePickerVC.delegate = self
        imagePickerVC.sourceType = .photoLibrary
        present(imagePickerVC, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true,completion: nil)
        
        if let image = info[.originalImage] as? UIImage {
            myImageView.image = image
        }
    }
   
}


