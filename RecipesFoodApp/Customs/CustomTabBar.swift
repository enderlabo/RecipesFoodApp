//
//  CustomTabBar.swift
//  RecipesFoodApp
//
//  Created by Laborit on 28/10/21.
//

import UIKit

class CustomTabBar: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        defaultTabBar()
    }

    func defaultTabBar(){
        
    }
    
    @IBAction func backButtonTapped(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }

}
