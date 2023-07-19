//
//  CompanyTableViewCell.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 17/06/23.
//

import UIKit

class CompanyTableViewCell: UITableViewCell {

    @IBOutlet weak var companyImg: UIImageView!
    
    @IBOutlet weak var companyName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configcell(data: Company){
        companyImg.image = UIImage(named: data.companyImage!)
        companyName.text = data.companyName
        
    }
    
}
