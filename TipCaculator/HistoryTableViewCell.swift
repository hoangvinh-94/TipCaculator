//
//  HistoryTableViewCell.swift
//  TipCaculator
//
//  Created by healer on 5/31/17.
//  Copyright © 2017 healer. All rights reserved.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {

    @IBOutlet var CaculatorLabel: UILabel!
    @IBOutlet var TimeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
