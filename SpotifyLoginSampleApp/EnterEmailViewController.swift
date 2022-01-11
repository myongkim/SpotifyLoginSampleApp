//
//  EnterEmailViewController.swift
//  SpotifyLoginSampleApp
//
//  Created by Isaac Kim on 1/10/22.
//

import UIKit


class EnterEmailViewController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var errorMessageLabel: UILabel!
    @IBOutlet var nextButton: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        //navigation appear
        navigationController?.navigationBar.isHidden = false
        
    }
    
    override func viewDidLoad() {
        configure()
        
    }
    
    
    func configure() {
        
//        nextButton.layer.borderWidth = 1
//        nextButton.layer.borderColor = UIColor.white.cgColor
        nextButton.layer.cornerRadius = 30
        nextButton.isEnabled = false
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        emailTextField.becomeFirstResponder()
        
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
    }
    
    
}

extension EnterEmailViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let isEmailEmpty = emailTextField.text == ""
        let isPasswordEmpty = passwordTextField.text == ""
        
   
        nextButton.isEnabled = !isEmailEmpty && !isPasswordEmpty
    }
    
}
