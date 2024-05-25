//
//  ViewController.swift
//  FloresSnapchat
//
//  Created by Noe Flores on 20/05/24.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password:  passwordTextField.text!){(user, error) in
            print("Intentando iniciar sesion")
            if error != nil{
                print("Se presento el siguente error: \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
    
    /*
    @IBAction func iniciarSesionConGoogleTapped(_ sender: Any) {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance().signIn(with: config, presenting: self) { user, error in
            if let error = error {
                print("Error al iniciar sesión con Google: \(error.localizedDescription)")
                return
            }

            guard let authentication = user?.authentication else {
                print("No se pudo obtener la autenticación de Google")
                return
            }

            let credentials = GoogleAuthProvider.credential(withIDToken: authentication.idToken!, accessToken: authentication.accessToken)

            Auth.auth().signIn(with: credentials) { (authResult, error) in
                if let error = error {
                    print("Error al iniciar sesión con Firebase: \(error.localizedDescription)")
                    return
                }

                print("Inicio de sesión con Google exitoso")
                
            }
        }
    }*/

}

