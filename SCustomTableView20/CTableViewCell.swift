//
//  CTableViewCell.swift
//  SCustomTableView20
//
//  Created by sreenivasulareddy on 12/11/15.
//  Copyright © 2015 sreenivasulareddy. All rights reserved.
//

import UIKit

class CTableViewCell: UITableViewCell {

    @IBOutlet var ccelllabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
