//
//  ScrollViewController.swift
//  UIComponents
//
//  Created by Shyam Buhecha on 15/06/23.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var myScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.scrollViewWillBeginDecelerating(myScrollView)
        myScrollView.isPagingEnabled = true
      
    }
 
    
}
extension ScrollViewController: UIScrollViewDelegate {

    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
     
    }
    
    public func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        
    }
    
    public func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        
        
        
    }
    public func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        
    }
    public func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        return true //give return
    }
    public func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        
    }
    public func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        scrollView.decelerationRate =  .fast
    }
    public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
    }
}

