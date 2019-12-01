//
//  DieuHuongCell.swift
//  DemoTapBar
//
//  Created by Boss on 11/30/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class DieuHuongCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var buttonCell: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func OnClickButton(_ sender: Any) {
    }
    
}
