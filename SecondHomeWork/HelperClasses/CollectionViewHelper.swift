//
//  CollectionViewHelper.swift
//  SecondHomeWork
//
//  Created by Bilal Candemir on 9/13/22.
//

import UIKit


class CollectionViewHelper:NSObject, DataShare {
    
    
    
    weak var collectionView:UICollectionView?
    weak var viewController:ViewController?
    var storyboard:UIStoryboard?
    var navigationController:UINavigationController?
    var items:[RowItem] = []
    var selectedObject:News!
    
    typealias RowItem = News
    
    init(collectionView: UICollectionView, vc: ViewController, storyboard:UIStoryboard, navigationController: UINavigationController){
        super.init()
        self.collectionView = collectionView
        self.viewController = vc
        self.storyboard = storyboard
        self.navigationController = navigationController
        configureCollectionView()
        setData(item: items)
    }
    
    func loadData() -> News {
        return selectedObject
    }
    
    private func configureCollectionView(){
        
        collectionView?.register(UINib(nibName: CustomNewsCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CustomNewsCollectionViewCell.identifier)
        
        collectionView?.backgroundColor = UIColor(named: "bacgroundColor")
        
        collectionView?.delegate = self
        collectionView?.dataSource = self
    }
    
    private func setData(item: [RowItem]){
        self.items = item
    }
}


extension CollectionViewHelper:UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomNewsCollectionViewCell.identifier, for: indexPath) as! CustomNewsCollectionViewCell
        
        cell.configureData(item: items[indexPath.row])
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailViewController = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        
        
        
        selectedObject = News(image: items[indexPath.row].image, newsTitle: items[indexPath.row].newsTitle, newsDescription: items[indexPath.row].newsDescription, newsURL: items[indexPath.row].newsURL)
        detailViewController.delegate = self
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    
}

extension CollectionViewHelper: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width / 2 - 35
        
        return CGSize(width: width, height: 230)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 30 , left: 16, bottom: 0, right: 16)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
}

