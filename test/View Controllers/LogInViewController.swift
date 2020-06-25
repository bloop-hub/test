//
//  LogInViewController.swift
//  test
//
//  Created by khin on 25/6/20.
//  Copyright © 2020 khin. All rights reserved.
//

import UIKit
import FirebaseAuth

class LogInViewController: UIViewController {

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passWordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        let email = userNameField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let pw = passWordField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        print(email)
        print(pw)

        Auth.auth().signIn(withEmail: email, password: pw) { (result, error) in
            /*if error != nil {
                print("yea sux")
            } else {
                let HomeViewController = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as? HomeViewController
                
                self.view.window?.rootViewController = HomeViewController
                self.view.window?.makeKeyAndVisible()
                
            }*/
        }
    }
}
