//
//  CityTableViewCell.swift
//  Pods
//
//  Created by Minaya Yagubova on 22.02.23.
//

import UIKit

class CityTableViewCell: UITableViewCell {
    @IBOutlet weak var cityName: UILabel!
    
    @IBOutlet weak var cityImage: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
