//
//  ViewController.swift
//  a815HelloF1
//
//  Created by 申潤五 on 2021/8/22.
//

import UIKit
import FirebaseAuth
import Firebase
import GoogleSignIn

class ViewController: UIViewController {

    @IBOutlet weak var gSignButton: GIDSignInButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        
      
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       
    }
    
    
    
    @IBAction func signIn(_ sender: Any) {
        googleSingIn()
    }
    
    func googleSingIn(){
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)

        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(with: config, presenting: self) { [unowned self] user, error in

          if let error = error {
            // ...
            return
          }

          guard
            let authentication = user?.authentication,
            let idToken = authentication.idToken
          else {
            return
          }

          let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                         accessToken: authentication.accessToken)

          // ...
        }
    }
    

}

