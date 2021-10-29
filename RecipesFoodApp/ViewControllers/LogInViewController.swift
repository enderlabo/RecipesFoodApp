//
//  LogInViewController.swift
//  RecipesFoodApp
//
//  Created by Laborit on 26/10/21.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var logInLabel: CustomLabel!
    @IBOutlet weak var subLabel: CustomLabel!
    @IBOutlet weak var textfieldEmail: CustomTextField!
    @IBOutlet weak var textfieldPassword: CustomTextField!
    
    @IBOutlet weak var logInButton: CustomButtons!
    @IBOutlet weak var forgotLabel: CustomLabel!
    
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
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
    //pops current VC in Stack
    @IBAction func backButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

//MARK: - TextField Slides Up
extension  LogInViewController {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("start tipying...")
        topConstraint.constant = CGFloat(0)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        topConstraint.constant = CGFloat(45)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        topConstraint.constant = CGFloat(45)
        textField.resignFirstResponder()
        print("Stop tipying...")
        return true
    }
}
