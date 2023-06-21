//
//  ViewController.swift
//  ktproject
//
//  Created by Shyam Buhecha on 21/06/23.
//

import UIKit

struct data {
    let settingImg: String
    let settingName: String
    let btnStatus: Bool
}
class ViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {

    var firstSectionList = [data(settingImg: "img", settingName: "User Face Id for Login",btnStatus: true),data(settingImg: "secImg", settingName: "User Face Id for Login",btnStatus: false)]
    var secondSectionList = [data(settingImg: "menu", settingName: "User Face Id for Login",btnStatus: true),data(settingImg: "img4", settingName: "User Face Id for Login",btnStatus: false)]

    let sectionData = [[data(settingImg: "img", settingName: "User Face Id for Login",btnStatus: true),data(settingImg: "secImg", settingName: "User Face Id for Login",btnStatus: false)],[data(settingImg: "menu", settingName: "User Face Id for Login",btnStatus: true),data(settingImg: "ring", settingName: "User Face Id for Login",btnStatus: false)]]


    @IBOutlet weak var tblSetting: UITableView!
   
    @IBOutlet weak var btnCancle: UIView!
    @IBOutlet weak var bottumView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        tblSetting.delegate = self
        tblSetting.dataSource = self
        tblSetting.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
        bottumView.layer.cornerRadius = 24
        
        btnCancle.layer.borderWidth = 1
        btnCancle.layer.borderColor = CGColor.init(red: CGFloat(0), green:  CGFloat(0), blue:  CGFloat(0), alpha:  1)
        btnCancle.layer.cornerRadius = 8
        
    }
    
    //Delegate
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sectionData[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

         let cell =  tblSetting.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        let oneCell = sectionData[indexPath.section][indexPath.row]
        cell.settingImg.image = UIImage(named: oneCell.settingImg)
        cell.lblSettingTitle.text = oneCell.settingName
        cell.btn.setBackgroundImage(UIImage(named: "on"), for: .normal)
        cell.btn.tintColor = UIColor.white
        cell.btn.setBackgroundImage(UIImage(named: "off"), for: .highlighted)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 50))
            
            let label = UILabel()
            label.frame = CGRect.init(x: 5, y: 5, width: headerView.frame.width-10, height: headerView.frame.height-10)
        if section == 0 {
            label.text = "Privacy"
        }else {
            label.text = "Other"
        }
           
            label.font = .systemFont(ofSize: 16)
            label.textColor = .black
        headerView.backgroundColor = UIColor(named: "lightblack")
            headerView.addSubview(label)
        
            return headerView
        }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 50
        }
    var num = true
    @IBAction func clickOnButton(_ sender: UIButton) {
       
        if num {
            sender.setImage(UIImage(named: "on"), for: .normal)
            bottumView.isHidden = false
            num.toggle()
        }else {
            sender.setImage(UIImage(named: "off"), for: .normal)
            bottumView.isHidden = true
            num.toggle()
        }
       
       
    }
}

