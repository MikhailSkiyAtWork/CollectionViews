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
    var paper: Paper? {
        didSet {
            if let paper = paper {
                paperImageView.image = UIImage(named:paper.imageName)
            }
        }
    }
}
