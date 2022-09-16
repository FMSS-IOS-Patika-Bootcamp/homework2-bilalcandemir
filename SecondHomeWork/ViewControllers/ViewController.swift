//
//  ViewController.swift
//  SecondHomeWork
//
//  Created by Bilal Candemir on 9/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    /// This array will load from AddMockData Extension
    var newsArray = [News]()
    
    /// Created an instance from HelperClass for make less process in one view controller
    private var collectionViewHelper:CollectionViewHelper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Home"
        addMockData()
        
        /// Create a collection view using helper class i did explain on helper class why we need to send a storyboard and navigation controller
        collectionViewHelper = .init(collectionView: mainCollectionView, vc: self, storyboard: UIStoryboard(name: "Main", bundle: nil), navigationController: self.navigationController!)
        
        /// Send data to helper class which we loaded before on AddMockData extension
        collectionViewHelper.items = newsArray
    }
    
    /// This provide us hide navigation controller bar on first view controller
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }
    
    /// This provide us show navigation controller bar on second view controller
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
}
