//
//  CustomColors.swift
//  RecipesFoodApp
//
//  Created by Laborit on 24/10/21.
//

import Foundation
import ChameleonFramework

struct CustomColors {
    let orange: UIColor!
    
    init(withFrame: CGRect){
        
        let firstColor = UIColor(hexString: "FF8C2B", withAlpha: 1)
        let SecondColor = UIColor(hexString: "FF6322", withAlpha: 1)
        
        orange = UIColor(gradientStyle: .leftToRight, withFrame: withFrame, andColors: [firstColor!, SecondColor!])
    }
    //MARK: - Get Orange Color
    func getOrangeColor() -> UIColor {
        return orange
    }
}
