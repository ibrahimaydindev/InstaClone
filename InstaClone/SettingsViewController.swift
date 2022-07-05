//
//  SettingsViewController.swift
//  InstaClone
//
//  Created by Efe on 6.07.2021.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    @IBOutlet weak var CikisLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func CikisYap(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toViewController", sender: nil)
        } catch {
            print("error")
        }    }
    

}

