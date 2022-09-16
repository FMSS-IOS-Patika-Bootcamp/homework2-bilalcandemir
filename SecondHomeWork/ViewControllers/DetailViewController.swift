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
        
        showDetailButton.backgroundColor = UIColor.clear
        showDetailButton.tintColor = UIColor.white
        showDetailButton.layer.cornerRadius = 5
        showDetailButton.layer.borderWidth = 0.5
        showDetailButton.layer.borderColor = UIColor.gray.cgColor
        
        setData()
        self.title = controllerTitle
    }
    
    func navBarConfigurations(){
        self.navigationController?.navigationBar.barTintColor = UIColor(named: "bacgroundColor")
        self.navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    func setData(){
        let data:News = (delegate?.loadData())!
        newsImageView.image = UIImage(named: data.image)
        newsTitleLabel.text = data.newsTitle
        newsDescriptionLabel.text = data.newsDescription
        newsURL = data.newsURL
        self.controllerTitle = data.newsTitle
    }
    
    @IBAction func showDetailPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "NewsWebViewController") as! NewsWebViewController
        vc.newsURL = self.newsURL
        self.present(vc, animated: true, completion: nil)
        
        
        //        let newsWebViewController = storyboard?.instantiateViewController(identifier: "NewsWebViewController") as! NewsWebViewController
        //
        //        navigationController?.pushViewController(newsWebViewController, animated: true)
    }
    
}
