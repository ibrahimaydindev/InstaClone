	//
//  ViewController.swift
//  InstaClone
//
//  Created by Efe on 6.07.2021.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    
    @IBOutlet weak var ApLabel: UILabel!
    @IBOutlet weak var SifreLabel: UILabel!
    @IBOutlet weak var MailLabel: UILabel!
    @IBOutlet weak var emailText: UITextField!
    
    
    @IBOutlet weak var passwordText: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func SignInClicked(_ sender: Any) {
        if emailText.text != "" && passwordText.text != "" {
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) { authdata, error in
                
                
                if error != nil {
                    self.hataMesaji(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")                                      }
                
                
                
                
                else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                                }
            }
            
        }
        
        else {
            hataMesaji(titleInput: "Error", messageInput: "Username/Password")
        }    }
    

    @IBAction func SignUpClicked(_ sender: Any) {
        if emailText.text != "" && passwordText.text != "" {
            Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { authdata, error in
                if error != nil {
                    self.hataMesaji(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                }
                
                else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
              
            }
        }
             
        else {
            hataMesaji(titleInput: "Error", messageInput: "Username/Password")
        }    }
    

    func hataMesaji(titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)    }
    
        }
  
    
        
    
    
    
    



