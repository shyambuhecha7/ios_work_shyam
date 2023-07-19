//
//  TableViwCellVCTableViewCell.swift
//  iOSWebService
//
//  Created by Shyam Buhecha on 08/07/23.
//

import UIKit

class TableViwCellVCTableViewCell: UITableViewCell {

    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var salary: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
