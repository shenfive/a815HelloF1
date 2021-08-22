//
//  ViewController.swift
//  a815HelloF1
//
//  Created by 申潤五 on 2021/8/22.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Auth.auth().signInAnonymously(completion: nil)
        
        
        Auth.auth().addStateDidChangeListener { auth, user in
            if let user = user {
                print("Wellcom:\(user.displayName)")
            }else{
                print("SignOut")
            }
        }
        
        
    }


}

