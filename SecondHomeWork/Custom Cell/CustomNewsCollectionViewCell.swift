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
    
    
    static let identifier = "CustomNewsCollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(named: "cellDescriptionTextColor")?.cgColor
        self.layer.cornerRadius = 5
    }
    
    func configureData(item: News){
        newsImageView.image = UIImage(named: item.image)
        newsTitleLabel.text = item.newsTitle
    }

}
