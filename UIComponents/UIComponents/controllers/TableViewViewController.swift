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
    
    var sectionTitleList = ["Top Indian Company", "Top World"]
    var footerTitleList = ["Footer-1", "Footer-2"]
    
    var companysList = [ Company(companyImage: "Simform",companyName:  " "), Company(companyImage:"search (1)",companyName:  "Google"),Company(companyImage:"search (1)",companyName:  "Google"),Company(companyImage:"search (1)",companyName:  "Google"),Company(companyImage:"search (1)",companyName:  "Google"),Company(companyImage:"search (1)",companyName:  "Google"),Company(companyImage:"search (1)",companyName:  "Google"),Company(companyImage:"search (1)",companyName:  "Google")]

    @IBOutlet weak var tblCompanyList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblCompanyList.delegate = self
        tblCompanyList.dataSource = self
        
        tblCompanyList.rowHeight = UITableView.automaticDimension
        tblCompanyList.register(UINib(nibName: "CompanyTableViewCell", bundle: nil), forCellReuseIdentifier: "CompanyTableViewCell")
    }
    
    //MARK: UITABLEVIEW datasource methods
    func numberOfSections(in tableView: UITableView) -> Int {
    return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companysList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CompanyTableViewCell") as? CompanyTableViewCell else {return UITableViewCell()}
        let company = companysList[indexPath.row]
        cell.configcell(data: company)
        
        return cell
        
        
    }
    
    //MARK: TableVeiw Delegate Methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let company = companysList[indexPath.row]
        print("didselect", company.companyName!)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let company = companysList[indexPath.row]
        print("diddeselect", company.companyName!)
    }
    
    //MARK: HEADER & FOOTER
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = sectionTitleList[section]
        return title
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        let title = footerTitleList[section]
        return title
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let viewHeader = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tblCompanyList.frame.size.width, height: tblCompanyList.frame.size.height*0.20))
        viewHeader.backgroundColor = .blue
        return viewHeader
    }
    
}
