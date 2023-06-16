//
//  TableViewViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 16/06/23.
//

import UIKit

struct Company {
    var companyImage: String?
    var companyName: String?
    
}


class TableViewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var companyList = [ Company(companyImage: "Simform",companyName:  " "), Company(companyImage:"search (1)",companyName:  "Google"),Company(companyImage:"search (1)",companyName:  "Google"),Company(companyImage:"search (1)",companyName:  "Google"),Company(companyImage:"search (1)",companyName:  "Google"),Company(companyImage:"search (1)",companyName:  "Google"),Company(companyImage:"search (1)",companyName:  "Google"),Company(companyImage:"search (1)",companyName:  "Google")]

    @IBOutlet weak var tblCompanyList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: UITABLEVIEW datasource methods
    func numberOfSections(in tableView: UITableView) -> Int {
    return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
}
