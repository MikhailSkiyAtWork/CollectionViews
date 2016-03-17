//
//  SectionHeaderView.swift
//  CollectionViewTest
//
//  Created by Михаил Валуйский on 17.03.16.
//  Copyright © 2016 Михаил Валуйский. All rights reserved.
//

import UIKit
class SectionHeaderView : UICollectionReusableView {
    
    @IBOutlet private weak var titleLalbel : UILabel!
    @IBOutlet private weak var iconImageView: UIImageView!
    
    var title: String? {
        didSet{
            titleLalbel.text = title
        }
    }
    
    var icon: UIImage? {
        didSet{
            iconImageView.image = icon
        }
    }
}
