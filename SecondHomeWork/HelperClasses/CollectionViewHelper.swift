//
//  CollectionViewHelper.swift
//  SecondHomeWork
//
//  Created by Bilal Candemir on 9/13/22.
//

import UIKit

/// This class created for make less proccess on view controller
class CollectionViewHelper:NSObject, DataShare {
    
    /// This class will take a collection view and view controller for create a collection view
    weak var collectionView:UICollectionView?
    weak var viewController:ViewController?
    
    /// Also we need storyboard and navigation controller because we will make segue between two controllers
    var storyboard:UIStoryboard?
    var navigationController:UINavigationController?
    
    /// Changed News Model name for this class with typealias
    typealias RowItem = News
    
    /// This array will come from view controller because of this reason we created empty
    var items:[RowItem] = []
    ///This variable for which row selected and send to detail view controller
    var selectedObject:News!
    
    
    /// When we use this helper class in view controller we should initialization for create a new collection view
    init(collectionView: UICollectionView, vc: ViewController, storyboard:UIStoryboard, navigationController: UINavigationController){
        super.init()
        self.collectionView = collectionView
        self.viewController = vc
        self.storyboard = storyboard
        self.navigationController = navigationController
        configureCollectionView()
        setData(item: items)
    }
    
    /// This came from protocol and also this function returns selected object
    /// We send a data from first view controller to second view controller so we should return this value because we will call in the detail view controller (second view controller)
    func loadData() -> News {
        return selectedObject
    }
    
    /// Configure our collection view
    private func configureCollectionView(){
        
        /// Registiration process to describe which custom cell we will use.
        collectionView?.register(UINib(nibName: CustomNewsCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CustomNewsCollectionViewCell.identifier)
        
        collectionView?.backgroundColor = UIColor(named: "bacgroundColor")
        
        /// Delegation Process
        collectionView?.delegate = self
        collectionView?.dataSource = self
    }
    
    /// This function add data to item array which came from view controller
    private func setData(item: [RowItem]){
        self.items = item
    }
}

/// Collection View Delegation
extension CollectionViewHelper:UICollectionViewDelegate, UICollectionViewDataSource {
    /// How many items in section
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    /// What will show the collection view
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        /// Describe the custom collection view cell with static identifier i used this method for make something different
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomNewsCollectionViewCell.identifier, for: indexPath) as! CustomNewsCollectionViewCell
        /// Send data to collection view cell function
        cell.configureData(item: items[indexPath.row])
        return cell
    }
    
    /// When we tap a cell in collection view this function will be enabled
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        /// Because of this reason we defined a new storyboard. This class isn't a view controller so this class don't have storyboard, navigation controller or something.
        let detailViewController = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        
        ///When user tap a cell we will change inside of selectedObject and also we will send to detail view controller a data which selected from user
        selectedObject = News(image: items[indexPath.row].image, newsTitle: items[indexPath.row].newsTitle, newsDescription: items[indexPath.row].newsDescription, newsURL: items[indexPath.row].newsURL)
        
        /// Give detail view controller delegate self because we want to share data with protocol
        detailViewController.delegate = self
        
        /// Go to the Detail view controller with navigation controller
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
}

/// This delegation using for cell sizes
extension CollectionViewHelper: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        /// We seperated our view 2 parts. Right now we have 2 parts but this will be too big for controller. We should make smaller with extraction
        let width = collectionView.bounds.width / 2 - 35
        
        /// return our cell size
        return CGSize(width: width, height: 230)
    }
    
    /// This function provide us to give spaces collection view
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 30 , left: 16, bottom: 0, right: 16)
    }
    
    /// This function provide us to give line spaces between every cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
}

