//
//  Login&SignUpViewController.swift
//  RecipesFoodApp
//
//  Created by Laborit on 24/10/21.
//

import UIKit

class Login_SignUpViewController: UIViewController {
    
    @IBOutlet weak var flavrLabel: UILabel!
    @IBOutlet weak var logInButton: CustomButtons!
    @IBOutlet weak var dontHaveLabel: UILabel!
    @IBOutlet weak var signUpButton: CustomButtons!
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initProperties()
       
    }
    //MARK: - Init UIElements
    func initProperties(){        
        signUpButton.putCustomWhiteButton()
        
    }

}
