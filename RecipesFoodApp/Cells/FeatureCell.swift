//
//  FeatureCell.swift
//  RecipesFoodApp
//
//  Created by Laborit on 6/11/21.
//

import UIKit

class FeatureCell: UITableViewCell {

    @IBOutlet weak var uiCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
