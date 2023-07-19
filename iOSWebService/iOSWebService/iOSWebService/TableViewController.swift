//
//  TableViewController.swift
//  iOSWebService
//
//  Created by Shyam Buhecha on 05/07/23.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet weak var tableview: UITableView!
    
    struct Person: Codable {
        let name: String
        let age: Int
    }
       var data: [Person] = []
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           // Call the method to fetch data from the web server
           fetchData()
       }
       
       func fetchData() {
           guard let url = URL(string: "https://example.com/data.json") else {
               return
           }
           
           URLSession.shared.dataTask(with: url) { [weak self] (data, _, _) in
               guard let data = data else { return }
               
               do {
                   let decoder = JSONDecoder()
                   self?.data = try decoder.decode([Person].self, from: data)
                   
                   DispatchQueue.main.async {
                       self?.tableView.reloadData()
                   }
               } catch {
                   print("Error decoding JSON: \(error.localizedDescription)")
               }
           }.resume()
       }
       
       // MARK: - UITableViewDataSource
       
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return data.count
       }
       
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell else {
               fatalError("Unable to dequeue CustomTableViewCell")
           }
           
           let person = data[indexPath.row]
           cell.namelabel.text = person.name
           cell.agelabel.text = "\(person.age)"
           
           return cell
       }
       
       // MARK: - UITableViewDelegate
       
       // Implement additional delegate methods if needed
   }
