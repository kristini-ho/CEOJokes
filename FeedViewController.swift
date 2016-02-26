//
//  FeedViewController.swift
//  CEOJokes
//
//  Created by Jessica  Cherny on 2/23/16.
//  Copyright © 2016 Jessica  Cherny. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cell"

class FeedViewController: UICollectionViewController {
    var ceos = ["Steve Jobs", "Mark Zuckerberg", "Elon Musk", "Virindh"]
    
    var images = ["steve_jobs", "mark_zuckerberg", "elon_musk", "virindh"]
    
    var jokes = ["What's the Object Oriented Way to get wealthy? ", "What is a programmer's favorite place to hang out? ", "Why did the programmer quit his job? ", "Why do computers and air conditioners have in common? "]
    
    var answers = ["Inheritance!", "Foo Bar!", "Because he didn't get arrays", "They both become useless when you open windows"]
    
    var currIndex:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return ceos.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CEOCell
    
        // Configure the cell
        cell.Name.text = ceos[indexPath.item]
        cell.ProfilePic.layer.cornerRadius = cell.ProfilePic.frame.height/2
        cell.ProfilePic.clipsToBounds = true
        cell.ProfilePic.image = UIImage(named: images[indexPath.item])
        cell.DescriptionBox.text = jokes[indexPath.item]
        cell.punchline = answers[indexPath.item]
        cell.backgroundColor = UIColor.whiteColor()
    
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        currIndex = indexPath.row
        self.performSegueWithIdentifier("toProducts", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toProducts" {
            let vc = segue.destinationViewController as! ProductsViewController
//            let row = (sender as! NSIndexPath).item
//            let Name = images[row]
////            vc.imageName = Name
            vc.rowIndex = currIndex
        }
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
