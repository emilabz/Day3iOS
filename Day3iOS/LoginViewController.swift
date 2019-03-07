//
//  ViewController.swift
//  Day3iOS
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var lbl_login: UILabel!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func signin_btn(_ sender: Any) {
        let email=txtUsername.text
        let pass=txtPassword.text
        if email == "a@b.com" && pass == "123"{
            print("Login successful")
            let sb=UIStoryboard(name: "Main", bundle: nil)
            let homeVC=sb.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
            self.navigationController?.pushViewController(homeVC, animated: true)
            //self.present(homeVC, animated: true)
            
        }
        else{
            print("Login failed")
            let alert=UIAlertController(title: "Login Failed", message: "Invalid username or password", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert,animated: true)
        }
    }
    
}

