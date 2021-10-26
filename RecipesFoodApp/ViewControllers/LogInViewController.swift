//
//  LogInViewController.swift
//  RecipesFoodApp
//
//  Created by Laborit on 26/10/21.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var logInLabel: CustomLabel!
    @IBOutlet weak var subLabel: CustomLabel!
    @IBOutlet weak var textfieldEmail: CustomTextField!
    @IBOutlet weak var textfieldPassword: CustomTextField!
    
    @IBOutlet weak var logInButton: CustomButtons!
    @IBOutlet weak var forgotLabel: CustomLabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        initProperties()
    }
    func initProperties(){
        logInLabel.setSpacing(space: 2.0)
        //TODO: fix the DRY??
        textfieldEmail.setLeftPaddingPoints(10)
        textfieldPassword.setLeftPaddingPoints(10)
    }
}
