//
//  RegisterNewUserViewController.swift
//  The Daily Bullet 2
//
//  Created by brenna on 11/26/17.
//  Copyright © 2017 Rock Valley College. All rights reserved.
//

import UIKit

class RegisterNewUserViewController: UIViewController {
    @IBOutlet weak var txtfirstName: UITextField!
    
    @IBOutlet weak var txtlastName: UITextField!
    
    @IBOutlet weak var txtemailAddress: UITextField!
    
    @IBOutlet weak var txtpassword: UITextField!
    
    @IBOutlet weak var txtretypePassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnCancel(_ sender: Any) {
        print("Cancel button works!")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnsignUp(_ sender: Any) {
        print("Sign up button works")
        
        // Validate required fields are not empty
        if (txtfirstName.text?.isEmpty)! || (txtlastName.text?.isEmpty)! || (txtemailAddress.text?.isEmpty)! || (txtpassword.text?.isEmpty)! || (txtretypePassword.text?.isEmpty)!
        {
            // Display Alert message and return
            return
        }
        
        // Validate password
        if
            ((txtpassword.text?.elementsEqual(txtretypePassword.text!))! != true)
        {
            //Display alert message and return
            return
        }
    }
    
    func displayMessage(userMessage:String) -> Void {
        DispatchQueue.main.async
            {
                let alertController = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)
    
                let OKAction = UIAlertAction(title: "OK", style: .default)
                { (action:UIAlertAction!) in
                    // Code in this block will trigger when OK button tapped
                    print("Ok button tapped")
                    DispatchQueue.main.async
                        {
                            self.dismiss(animated: true, completion: nil)
                        }
                }
                alertController.addAction(OKAction)
                self.present(alertController, animated: true, completion:nil)
            }
    }

}
