//
//  SignInViewController.swift
//  The Daily Bullet 2
//
//  Created by brenna on 11/25/17.
//  Copyright © 2017 Rock Valley College. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var emailAddressTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var btnsignin: UIButton!
    
    @IBOutlet weak var btnregister: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnsignin(_ sender: Any) {
        print("Sign In button works")
        
    }
    
    @IBAction func btnregister(_ sender: Any) {
        print("Register Button works")
        
        let registerViewController = self.storyboard?.instantiateViewController(withIdentifier: "RegisterNewUserViewController") as! RegisterNewUserViewController
        
        self.present(registerViewController, animated: true)
    }
    


}
