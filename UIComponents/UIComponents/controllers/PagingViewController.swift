//
//  PagingViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 16/06/23.
//

import UIKit

class PagingViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.isPagingEnabled = true
        
        let noOfPage = 5
        let padding = 20
        
        let viewWidth = scrollView.frame.width - CGFloat( 2 * padding )
        let viewHight = scrollView.frame.height -  CGFloat( 2 * padding )
        
        var x: CGFloat = 0
        
        for _ in 0...noOfPage {
            let view = UIView(frame: CGRect(x: x + CGFloat(padding), y: CGFloat(padding), width: viewWidth, height: viewHight))
            scrollView .addSubview(view)
            x = view.frame.origin.x + viewWidth + CGFloat(padding)
            view.backgroundColor = .white
            
            var view2 = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 5))
            view2.backgroundColor = .blue
                }

        scrollView.contentSize = CGSize(width:x+CGFloat(padding), height:scrollView.frame.size.height)
        
    }
    

    

}
