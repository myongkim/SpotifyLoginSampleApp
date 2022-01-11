//
//  MainViewController.swift
//  SpotifyLoginSampleApp
//
//  Created by Isaac Kim on 1/10/22.
//

import UIKit
import FirebaseAuth


class MainViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
        
        let email = Auth.auth().currentUser?.email ?? "고객"
        
        welcomeLabel.text = """
        환영합니다. \(email)님
        """
    }
    
    @IBAction func logOutButtonTapped(_ sender: UIButton) {
        
        let firebaseAuth = Auth.auth()
        
        do {
            try firebaseAuth.signOut()
            self.navigationController?.popToRootViewController(animated: true)
        
        } catch let signOutError as NSError {
            print("Error: Signout \(signOutError.localizedDescription)")
        }
        
        
        
    }
    
    
}
