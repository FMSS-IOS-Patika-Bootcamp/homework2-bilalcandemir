//
//  CustomNewsCollectionViewCell.swift
//  SecondHomeWork
//
//  Created by Bilal Candemir on 9/11/22.
//

import UIKit

class CustomNewsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsTitleLabel: UILabel!
    
    /// I used static identifier to use in view controller very easily
    static let identifier = "CustomNewsCollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        
        /// Give a border, border color and radius to collection view cell
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(named: "cellDescriptionTextColor")?.cgColor
        self.layer.cornerRadius = 5
    }
    
    /// Show data which will come from Collection View Helper Class aka View Controller
    func configureData(item: News){
        newsImageView.image = UIImage(named: item.image)
        newsTitleLabel.text = item.newsTitle
    }

}
