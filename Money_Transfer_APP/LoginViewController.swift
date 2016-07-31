//
//  LoginViewController.swift
//  Money_Transfer_APP
//
//  Created by serge kone Dossongui on 7/30/16.
//  Copyright © 2016 serge kone Dossongui. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var PasswordLoginField: UITextField!
  
  
    @IBOutlet weak var emailLoginField: UITextField!
    
    
    
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var RegisterButton: UIButton!
    
    //self declare variable
    var email = ""
    var password = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emailLoginField.delegate = self
        PasswordLoginField.delegate = self
       
  
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func Login(sender: AnyObject) {
        
        
    }

    @IBAction func EmailEditingEnd(sender: AnyObject) {
        
        
        email = emailLoginField.text as String!
        
        // only if input email number is correct
        
       emailLoginField.resignFirstResponder()
        PasswordLoginField.becomeFirstResponder()
        
        
        
    }
    
    
    @IBAction func PasswordEditingEnd(sender: AnyObject) {
        
        password = PasswordLoginField.text! as String
        
        PasswordLoginField.resignFirstResponder()
    }
    
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if(string == "\n") {
            textField.resignFirstResponder()
            
            return false
        }
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
