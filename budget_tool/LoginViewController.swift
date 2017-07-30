//
//  LoginViewController.swift
//  budget_tool
//
//  Created by Rafael Reyes on 7/29/17.
//  Copyright © 2017 Rafael Reyes. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var LoginImage: UIImageView!
    @IBOutlet weak var LoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LoginButton.layer.cornerRadius = 8
        //let rand = Int(arc4random_uniform(5) + 1) + 1
        //LoginImage.image = UIImage(named: "avatar" + String(rand));
      //  LoginImage.isHidden = false
        LoginImage.layer.cornerRadius = LoginImage.frame.width / 2;
        LoginImage.clipsToBounds = true;
        
        //self.profileImageView.layer.borderWidth = 3.0f;
        //self.profileImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
