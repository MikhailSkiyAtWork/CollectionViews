//
//  Paper.swift
//  CollectionViewTest
//
//  Created by Михаил Валуйский on 16.03.16.
//  Copyright © 2016 Михаил Валуйский. All rights reserved.
//

import Foundation

class Paper {
    
    var caption: String
    var imageName: String
    var section: String
    var index: Int
    
    init(caption: String, imageName: String, section: String, index:Int){
        self.caption = caption
        self.imageName = imageName
        self.section = section
        self.index = index
    }
    
    convenience init(copying paper: Paper) {
        self.init(caption: paper.caption, imageName: paper.imageName, section: paper.section, index: paper.index)
    }
}