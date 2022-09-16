//
//  DetailViewController.swift
//  SecondHomeWork
//
//  Created by Bilal Candemir on 9/11/22.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsTitleLabel: UILabel!
    @IBOutlet weak var newsDescriptionLabel: UILabel!
    @IBOutlet weak var showDetailButton: UIButton!
    
    var delegate:DataShare?
    var newsURL:String!
    var controllerTitle:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navBarConfigurations()
        
        /// Change some ui of show detail button
        showDetailButton.backgroundColor = UIColor.clear
        showDetailButton.tintColor = UIColor.white
        showDetailButton.layer.cornerRadius = 5
        showDetailButton.layer.borderWidth = 0.5
        showDetailButton.layer.borderColor = UIColor.gray.cgColor
        
        setData()
        
        /// Change navigation bar title with label title
        self.title = controllerTitle
    }
    
    func navBarConfigurations(){
        self.navigationController?.navigationBar.barTintColor = UIColor(named: "bacgroundColor")
        self.navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    /// This function get our data from view controller with delegate
    func setData(){
        /// when you look to loadData function you will see the return
        let data:News = (delegate?.loadData())!
        
        ///Change data with the data which came from view controller
        newsImageView.image = UIImage(named: data.image)
        newsTitleLabel.text = data.newsTitle
        newsDescriptionLabel.text = data.newsDescription
        newsURL = data.newsURL
        self.controllerTitle = data.newsTitle
    }
    
    /// When user tap to news detail button we will show web view
    @IBAction func showDetailPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "NewsWebViewController") as! NewsWebViewController
        vc.newsURL = self.newsURL
        
        /// This is for just show us on controller don't push from navigation controller
        self.present(vc, animated: true, completion: nil)
    }
}
