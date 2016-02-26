//
//  CEOCell.swift
//  CEOJokes
//
//  Created by Jessica  Cherny on 2/23/16.
//  Copyright © 2016 Jessica  Cherny. All rights reserved.
//

import UIKit

class CEOCell: UICollectionViewCell {
    var punchline = ""
    
    @IBOutlet weak var Name: UILabel!
    
    @IBAction func showAnswer(sender: AnyObject) {
        JokeAnswer.text = punchline
    }
    @IBOutlet weak var ProfilePic: UIImageView!
    
    @IBOutlet weak var DescriptionBox: UITextView!

    @IBOutlet weak var JokeAnswer: UILabel!
}
