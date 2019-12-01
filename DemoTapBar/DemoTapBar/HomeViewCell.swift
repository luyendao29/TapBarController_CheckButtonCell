//
//  HomeViewCell.swift
//  DemoTapBar
//
//  Created by Boss on 12/1/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

protocol HomeCellDelegate: AnyObject {
    func onClickButtonTapped(cell: HomeViewCell) -> Void
}

class HomeViewCell: UITableViewCell {
    @IBOutlet weak var nameLabell: UILabel!
    @IBOutlet weak var ageLabell: UILabel!
    @IBOutlet weak var buttonDelete: UIButton!
    
    weak var delegate: HomeCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func OnClickButtonDelete(_ sender: Any) {
        delegate?.onClickButtonTapped(cell: self)
    }
}
