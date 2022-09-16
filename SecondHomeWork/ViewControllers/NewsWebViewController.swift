//
//  NewsWebViewController.swift
//  SecondHomeWork
//
//  Created by Bilal Candemir on 9/12/22.
//

import UIKit
import WebKit

class NewsWebViewController: UIViewController {
    
    @IBOutlet weak var newsWebView: WKWebView!
    
    /// This  String will be change from detail view controller
    var newsURL:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /// Add a url
        let url = URL(string: newsURL)!
        ///Load our url
        newsWebView.load(URLRequest(url: url))
        newsWebView.allowsBackForwardNavigationGestures = true
    }

}
