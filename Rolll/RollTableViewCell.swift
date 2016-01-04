//
//  RollTableViewCell.swift
//  Rolll
//
//  Created by Miles Ranisavljevic on 12/29/15.
//  Copyright © 2015 creeperspeak. All rights reserved.
//

import UIKit

class RollTableViewCell: UITableViewCell {
    
    var roll: Roll? {
        didSet {
            //
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
