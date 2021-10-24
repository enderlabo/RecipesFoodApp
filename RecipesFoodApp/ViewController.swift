//
//  ViewController.swift
//  RecipesFoodApp
//
//  Created by Laborit on 24/10/21.
//

import UIKit
import ChameleonFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let firstColor = UIColor(hexString: "FF8C2B", withAlpha: 1)
        let SecondColor = UIColor(hexString: "FF6322", withAlpha: 1)
        
        self.view.backgroundColor = UIColor(gradientStyle: .leftToRight, withFrame: view.frame, andColors: [firstColor!, SecondColor!])
    }

//    UIColor(gradientStyle:UIGradientStyle, withFrame:CGRect, andColors:[UIColor])

}

