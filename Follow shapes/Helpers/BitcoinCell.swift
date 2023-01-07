//
//  BitcoinCell.swift
//  ByteDex
//
//  Created by Asif Razzaq on 27/10/2021.
//

import UIKit

class BitcoinCell: UITableViewCell {
    
    // MARK:- Outlets
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var btcLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
