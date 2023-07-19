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
class CollectionViewController: UIViewController {
   
    var companysList = [ CompanyModel(companyImage: "youtube",companyName:  "Youtube"), CompanyModel(companyImage:"linkedin",companyName:  "LinkedIn"),CompanyModel(companyImage:"telegram",companyName:  "telegram"),CompanyModel(companyImage:"schedule",companyName:  "Schedule"),CompanyModel(companyImage:"gmail",companyName:  "Gmail"),CompanyModel(companyImage:"tik-tok",companyName:  "Tiktok"),CompanyModel(companyImage:"phone-call",companyName:  "Call"),CompanyModel(companyImage:"placeholder",companyName:  "Map"),CompanyModel(companyImage: "youtube",companyName:  "Youtube"), CompanyModel(companyImage:"linkedin",companyName:  "LinkedIn"),CompanyModel(companyImage:"telegram",companyName:  "telegram"),CompanyModel(companyImage:"schedule",companyName:  "Schedule"),CompanyModel(companyImage:"gmail",companyName:  "Gmail"),CompanyModel(companyImage:"tik-tok",companyName:  "Tiktok"),CompanyModel(companyImage:"phone-call",companyName:  "Call"),CompanyModel(companyImage:"placeholder",companyName:  "Map")]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        var nibName = UINib(nibName: "CollectionViewCell", bundle: nil)
        self.collectionView.register(nibName, forCellWithReuseIdentifier: "CollectionViewCell")
    }
    
    
}

extension CollectionViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        guard let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else { return UICollectionViewCell()}
        let company = companysList[indexPath.row]
        cell.layer.borderWidth = 2
        cell.layer.borderColor = CGColor(red: CGFloat(0), green: CGFloat(0), blue: CGFloat(0), alpha: 1)
        cell.companyImg.image = UIImage(named: company.companyImage)
        cell.companyName.text = company.companyName
        cell.layoutMargins = UIEdgeInsets(top: CGFloat(2), left: CGFloat(10), bottom: CGFloat(2), right: CGFloat(1))
       
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
        //this for horizontal scrolling :
        //CGSize( width: 150,height: (collectionView.frame.height / 2 - 5))
        return CGSize(width: collectionView.frame.size.width, height: 150)
    }
}
