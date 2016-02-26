//
//  ProductTableViewCell.swift
//  CEOJokes
//
//  Created by Jessica  Cherny on 2/23/16.
//  Copyright © 2016 Jessica  Cherny. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var ProductName: UILabel!
    
    @IBAction func BuyButton(sender: AnyObject) {
        MyLabel.hidden = false
        
    }
    @IBOutlet weak var MyLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        MyLabel.hidden = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
