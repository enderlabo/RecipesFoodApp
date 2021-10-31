//
//  RecipieCellTableViewCell.swift
//  RecipesFoodApp
//
//  Created by Laborit on 30/10/21.
//

import UIKit

class RecipieCellTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
