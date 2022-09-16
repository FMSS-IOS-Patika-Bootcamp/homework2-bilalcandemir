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
    
    var newsURL:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(newsURL)
        let url = URL(string: newsURL)!
        newsWebView.load(URLRequest(url: url))
        newsWebView.allowsBackForwardNavigationGestures = true
    }

}
