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
    @IBOutlet private weak var checkImageView: UIImageView!
    
    var editing: Bool = false {
        didSet {
            captionLabel.hidden = editing
            checkImageView.hidden = !editing
            
        }
    }
    
    var moving: Bool = false {
        didSet {
            let alpha: CGFloat = moving ? 0.0 : 1.0
            paperImageView.alpha = alpha
            if let gradientView = gradientView {
            gradientView.alpha = alpha
            }
            captionLabel.alpha = alpha
        }
    }
    
    var snapshot: UIView {
        get {
            let snapshot = snapshotViewAfterScreenUpdates(true)
            let layer = snapshot.layer
            layer.masksToBounds = false
            layer.shadowOffset = CGSize(width: -5.0, height: 0.0)
            layer.shadowRadius = 5.0
            layer.shadowOpacity = 0.4
            return snapshot
        }
    }
    
    override var selected: Bool {
        didSet{
            if editing{
                checkImageView.image = UIImage(named: selected ? "Checked" : "Unchecked")
            }
            
        }
    }
    
    var paper: Paper? {
        didSet {
            if let paper = paper {
                captionLabel.text = paper.caption
                paperImageView.image = UIImage(named:paper.imageName)
            }
        }
    }
}
