//
//  SignUpViewController.swift
//  RecipesFoodApp
//
//  Created by Laborit on 26/10/21.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var signUpLabel: CustomLabel!
    @IBOutlet weak var subLabel: CustomLabel!
    @IBOutlet weak var texfieldName: CustomTextField!
    @IBOutlet weak var textfieldEmail: CustomTextField!
    @IBOutlet weak var textfieldPassword: CustomTextField!
    @IBOutlet weak var createAccButton: CustomButtons!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initProperties()
        
    }
    
    func initProperties(){
        signUpLabel.setSpacing(space: 2.0)
        //TODO: fix the DRY??
        textfieldEmail.setLeftPaddingPoints(10)
        texfieldName.setLeftPaddingPoints(10)
        textfieldPassword.setLeftPaddingPoints(10)
        
    }

}
