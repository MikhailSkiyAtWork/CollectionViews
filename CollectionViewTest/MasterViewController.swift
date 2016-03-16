//
//  MasterViewController.swift
//  CollectionViewTest
//
//  Created by Михаил Валуйский on 16.03.16.
//  Copyright © 2016 Михаил Валуйский. All rights reserved.
//

import UIKit

class MasterViewController : UICollectionViewController {
    
    private var papersDataSource = PapersDataSource()
    
    // MARK: UIViewController
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        let width = CGRectGetWidth(collectionView!.frame) / 3
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width:width,height:width)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "MasterToDetail" {
            if let indexPath = collectionView!.indexPathsForSelectedItems()!.first! as? NSIndexPath {
                if let paper = papersDataSource.paperForItemAtIndexPath(indexPath){
                    let detailViewController = segue.destinationViewController as! DetailViewController
                    detailViewController.paper = paper
                }
            }
        }
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView)->Int{
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return papersDataSource.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath)->UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PaperCell", forIndexPath: indexPath) as UICollectionViewCell
        return cell
    }
    
    
}
