//
//  CollectionViewCell.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 17/06/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

   
    @IBOutlet weak var companyImg: UIImageView!
    
    @IBOutlet weak var companyName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    func configcell(data: Company){
        companyImg.image = UIImage(named: data.companyImage!)
        companyName.text = data.companyName
    }
}
