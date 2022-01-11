//
//  LoginViewController.swift
//  SpotifyLoginSampleApp
//
//  Created by Isaac Kim on 1/10/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var emailLoginButton: UIButton!
    @IBOutlet var googleLoginButton: UIButton!
    @IBOutlet var appleLoginButton: UIButton!
    

    
    
    override func viewDidLoad() {
        configure()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        // navigation bar 숨기기
        navigationController?.navigationBar.isHidden = true
        
    }
    
    func configure() {
        
      
        emailLoginButton.layer.borderWidth = 1
        emailLoginButton.layer.borderColor = UIColor.white.cgColor
        emailLoginButton.layer.cornerRadius = 30
        
        
        googleLoginButton.layer.borderWidth = 1
        googleLoginButton.layer.borderColor = UIColor.white.cgColor
        googleLoginButton.layer.cornerRadius = 30
        
        appleLoginButton.layer.borderWidth = 1
        appleLoginButton.layer.borderColor = UIColor.white.cgColor
        appleLoginButton.layer.cornerRadius = 30
       
    }
    
    
    @IBAction func googleLoginButtonTapped(_ sender: UIButton) {
        //firebase authentification
    }
    
    
    @IBAction func appleLoginButtonTapped(_ sender: UIButton) {
    }
    
    
}
