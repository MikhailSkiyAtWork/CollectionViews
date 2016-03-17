//
//  PaperCell.swift
//  CollectionViewTest
//
//  Created by Михаил Валуйский on 16.03.16.
//  Copyright © 2016 Михаил Валуйский. All rights reserved.
//

import UIKit

class PaperCell : UICollectionViewCell {
    @IBOutlet private weak var paperImageView: UIImageView!
    @IBOutlet private weak var gradientView: GradientView!
    @IBOutlet private weak var captionLabel: UILabel!
    
    var paper: Paper? {
        didSet {
            if let paper = paper {
                captionLabel.text = paper.caption
                paperImageView.image = UIImage(named:paper.imageName)
            }
        }
    }
}
