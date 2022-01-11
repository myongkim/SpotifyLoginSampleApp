//
//  MainViewController.swift
//  SpotifyLoginSampleApp
//
//  Created by Isaac Kim on 1/10/22.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
        
    }
    
    @IBAction func logOutButtonTapped(_ sender: UIButton) {
        
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    
}
