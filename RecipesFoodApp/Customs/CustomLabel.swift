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
        defaultSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetup()
    }
    
    func defaultSetup(){
        
    }

}
