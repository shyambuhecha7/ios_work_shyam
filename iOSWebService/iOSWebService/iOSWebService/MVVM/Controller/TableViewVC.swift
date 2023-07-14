//
//  TableViewVC.swift
//  iOSWebService
//
//  Created by Shyam Buhecha on 08/07/23.
//

import UIKit


class TableViewVC: UIViewController,UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    var userdata: [Article] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource = self
        fetchDataFromServer()
    
    }

    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViwCellVCTableViewCell", for: indexPath) as? TableViwCellVCTableViewCell else {
            return UITableViewCell()
        }
               

               // Configure the cell with data from your data source
        let item = userdata[indexPath.row]
        cell.firstName.text = item.title
        cell.salary.text = item.author
              
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        userdata.count
    }
    
    func fetchDataFromServer() {
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=c5a974d6ae66438b8d8ea823cfa26549") else { return }
        let urlRequest = URLRequest(url: url)
        
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            guard let data = data else{
                print("Data not received")
                return
            }
            
            guard let response = response else{
                print("Data not received")
                return
            }
            print(response)
            
            do{
//                let decoder = JSONDecoder()
                let result = try JSONDecoder().decode(UserData.self, from: data)
                self.userdata = result.articles
                self.tableview.reloadData()
            }catch{
                print("error in decoding json")
            }
        }
        dataTask.resume()
    }
}
