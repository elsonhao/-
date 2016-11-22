//
//  FirstTableViewCell.swift
//  test3
//
//  Created by 黃毓皓 on 2016/11/16.
//  Copyright © 2016年 ice elson. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var FirstImage: UIImageView!
    @IBOutlet weak var FirstLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
