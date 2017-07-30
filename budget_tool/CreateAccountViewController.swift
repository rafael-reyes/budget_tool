//
//  CreateAccountViewController.swift
//  budget_tool
//
//  Created by Rafael Reyes on 7/24/17.
//  Copyright © 2017 Rafael Reyes. All rights reserved.
//

import UIKit
//import SwiftyJSON
//import Alamofire

class CreateAccountViewController: UIViewController {
    @IBOutlet weak var LoginImage: UIImageView!
    
    @IBOutlet weak var accountUsername: UITextField!
    @IBOutlet weak var accountName: UITextField!
    @IBOutlet weak var accountPassword: UITextField!
    @IBOutlet weak var accountEmail: UITextField!
    
    
    @IBOutlet weak var SubmitButton: UIButton!
    @IBOutlet weak var CancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LoginImage.layer.cornerRadius = LoginImage.frame.width / 2;
        LoginImage.clipsToBounds = true;
        SubmitButton.layer.cornerRadius = 8
        CancelButton.layer.cornerRadius = 8
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    
    @IBAction func createNewAccount(_ sender: UIButton) {
        guard let username = accountName.text else { return }
        guard let name = accountName.text else { return }
        guard let password = accountPassword.text else { return }
        guard let email = accountEmail.text else { return }
        
        var fullNameArr = name.characters.split{$0 == " "}.map(String.init)
        let firstName: String = fullNameArr[0]
        let lastName: String? = fullNameArr.count > 1 ? fullNameArr[fullNameArr.count - 1] : nil
        
        var userDict = [String: Any]()
        userDict["username"] = username
        userDict["fname"] = firstName
        userDict["lname"] = lastName
        userDict["password"] = password
        userDict["email"] = email
        
        /* 
        Alamofire.request(APIConstants.User.createNewUser, method: .post, parameters: userDict, encoding: JSONEncoding.default, headers: nil)
            .responseJSON { response in
                if let json = response.result.value {
                    print(json)
                }
        } 
        */
        
        print(userDict)
    }
   
}
