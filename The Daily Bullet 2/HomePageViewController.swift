//
//  HomePageViewController.swift
//  The Daily Bullet 2
//
//  Created by brenna on 11/26/17.
//  Copyright © 2017 Rock Valley College. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {
    
    @IBOutlet weak var labelfullName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnsignOut(_ sender: Any) {
        print("Sign Out button tapped")
    }
    
    @IBAction func btnloadMember(_ sender: Any) {
        print("Load member button works")
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
