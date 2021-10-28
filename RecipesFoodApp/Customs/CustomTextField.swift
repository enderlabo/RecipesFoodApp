//
//  CustomTextField.swift
//  RecipesFoodApp
//
//  Created by Laborit on 26/10/21.
//

import UIKit

class CustomTextField: UITextField {

    override init(frame: CGRect){
        super.init(frame: frame)
        defaultCustomTextField()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultCustomTextField()
    }

    func defaultCustomTextField(){
        layer.borderWidth = 1
        layer.borderColor = UIColor(hexString: "E0E0E0").cgColor
        
        attributedPlaceholder = NSAttributedString(string: placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor(hexString: "9E9E9E")!])

    }
}
