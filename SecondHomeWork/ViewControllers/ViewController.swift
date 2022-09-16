//
//  ViewController.swift
//  SecondHomeWork
//
//  Created by Bilal Candemir on 9/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    var newsArray = [News]()
    private var collectionViewHelper:CollectionViewHelper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Home"
        addMockData()
        
        collectionViewHelper = .init(collectionView: mainCollectionView, vc: self, storyboard: UIStoryboard(name: "Main", bundle: nil), navigationController: self.navigationController!)
        collectionViewHelper.items = newsArray
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
}
