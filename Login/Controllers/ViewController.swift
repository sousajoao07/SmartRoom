//
//  ViewController.swift
//  Login
//
//  Created by João Sousa on 05/11/21.
//  Copyright © 2021 João Sousa. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?
    ) {
        
        //navigationItem.title = usernameTextField.text
        
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password"
        }else if sender == forgotUsernameButton{
            segue.destination.navigationItem.title = "Forgot Username"
        }
    }
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgotPasswordButton", sender: forgotPasswordButton)
    }
    
    
    @IBAction func forgotUsername(_ sender: UIButton) {
            performSegue(withIdentifier: "ForgotUsernameButton", sender: forgotUsernameButton)
    }
    
    @IBAction func login(_ sender: UIButton) {
        performSegue(withIdentifier: "LoginButton", sender: loginButton)
    }
}

