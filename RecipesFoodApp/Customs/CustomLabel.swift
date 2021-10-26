//
//  CustomLabel.swift
//  RecipesFoodApp
//
//  Created by Laborit on 24/10/21.
//

import UIKit

class CustomLabel: UILabel {

    override init(frame: CGRect){
        super.init(frame: frame)
        defaultLabelSpacing()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultLabelSpacing()
    }
    
    func defaultLabelSpacing(){
        let setLabelSpacing = 1
        let attributedString = NSMutableAttributedString(string: (text)!)
        attributedString.addAttribute(.kern, value: setLabelSpacing, range: NSMakeRange(0, attributedString.length - 1))
        
        attributedText = attributedString
    }
    //MARK: - Set custom spacing from any text.
    func setSpacing(space: CGFloat){
        let attributedString = NSMutableAttributedString(string: (text)!)
        attributedString.addAttribute(.kern, value: space, range: NSMakeRange(0,attributedString.length ))
        
        attributedText = attributedString
    }

}
