//
//  CustomButtons.swift
//  RecipesFoodApp
//
//  Created by Laborit on 24/10/21.
//

import UIKit

class CustomButtons: UIButton {
    
    //First loading func
    override init(frame: CGRect){
        super.init(frame: frame)
        defaultSetup()
    }
    //first required loading func
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetup()
    }
    
    
    func defaultSetup(){
        let orange = CustomColors(withFrame: frame).getOrangeColor()
        
        layer.backgroundColor = orange.cgColor
        layer.cornerRadius = layer.frame.height/2
        layer.masksToBounds = true
        
        let spacing = 1.5
        let attributedString = NSMutableAttributedString(string: (titleLabel?.text)!)
        attributedString.addAttribute(.kern, value: spacing, range: NSMakeRange(0, attributedString.length - 1))
        
        self.setAttributedTitle(attributedString, for: .normal)
    }

    func putCustomWhiteButton(){
        let orange = CustomColors(withFrame: frame).getOrangeColor()
        layer.borderWidth = 2
        backgroundColor = .white
        layer.cornerRadius = layer.frame.height/2
        layer.masksToBounds = true
        layer.borderColor = orange.cgColor
        
        let spacing = 1.5
        let attributedString = NSMutableAttributedString(string: (titleLabel?.text)!)
        attributedString.addAttribute(.kern, value: spacing, range: NSMakeRange(0, attributedString.length - 1))
        
        self.setAttributedTitle(attributedString, for: .normal)
    }
}
