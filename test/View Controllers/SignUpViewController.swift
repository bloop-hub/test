//
//  SignUpViewController.swift
//  test
//
//  Created by khin on 25/6/20.
//  Copyright © 2020 khin. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class SignUpViewController: UIViewController {

    @IBOutlet weak var eMailField: UITextField!
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passWordField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // check fields and validate data
    // if correct, method returns nil else returns error
    func validateField() {
        // code at like 47 mins idc abt this now
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        // add cleaned up fields
        let email = eMailField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let user = userNameField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let pw = passWordField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // validate field
        
        // create user
        // this adds to the authentication
        Auth.auth().createUser(withEmail: email, password: pw) { (result, err) in
            // check for errors
            
            let db = Firestore.firestore()
            // come back and change this later to use addDocument method w completion (idk why but youll see)
            // this adds to firestore, to store other information along w uid
            db.collection("users").addDocument(data: ["username":user, "uid":result!.user.uid])
        }
        
        // transition to home screen
    }
    
}
