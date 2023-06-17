//
//  CollectionViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 17/06/23.
//

import UIKit

struct CompanyModel{
    var companyImage: String
    var companyName: String
}
class CollectionViewController: UIViewController, UICollectionViewDelegate {
   
    var companysList = [ CompanyModel(companyImage: "Simform",companyName:  " "), CompanyModel(companyImage:"search (1)",companyName:  "Google"),CompanyModel(companyImage:"search (1)",companyName:  "Google"),CompanyModel(companyImage:"search (1)",companyName:  "Google"),CompanyModel(companyImage:"search (1)",companyName:  "Google"),CompanyModel(companyImage:"search (1)",companyName:  "Google"),CompanyModel(companyImage:"search (1)",companyName:  "Google"),CompanyModel(companyImage:"search (1)",companyName:  "Google")]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
    
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forSupplementaryViewOfKind: "CollectionViewCell", withReuseIdentifier: "CollectionViewCell")
    }
    
    
}

extension CollectionViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let company = companysList[indexPath.row]
        guard let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else { return UICollectionViewCell()}
      
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return companysList.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
   
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width / 2 - 10), height: 100)
    }
}
