//
//  CustomNavigation.swift
//  RecipesFoodApp
//
//  Created by Laborit on 27/10/21.
//

import UIKit

class CustomNavigation: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

       makeNavBarInvisible()
    }
    //MARK: - Hide Navigation bar on Innitial View
    func makeNavBarInvisible(){
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
        navigationBar.layer.frame.origin.y = 20

    }
    override var prefersStatusBarHidden: Bool{
        return true
    }

}
