//
//  CustomShadowView.swift
//  RecipesFoodApp
//
//  Created by Laborit on 2/11/21.
//

import UIKit

class CustomShadowView: UIView {


    override func draw(_ rect: CGRect) {
        applyShadow()
    }
    //MARK: - Adding shadow to UIView
    func applyShadow() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 4)
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 4
        
        let radio = CGSize(width: 4, height: 4)
        
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: .allCorners, cornerRadii: radio).cgPath
        
        
    }
  

}
