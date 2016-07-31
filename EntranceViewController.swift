//
//  EntranceViewController.swift
//  Money_Transfer_APP
//
//  Created by serge kone Dossongui on 7/29/16.
//  Copyright © 2016 serge kone Dossongui. All rights reserved.
//

import UIKit

class EntranceViewController: UIViewController {

    @IBOutlet weak var SendMoneyButton: UIButton!
    @IBOutlet weak var ReceiveMoneyButton: UIButton!
    @IBOutlet weak var LogInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
        
        // Do any additional setup after loading the view.
        
    //    self.SendMoneyButton.layer.cornerRadius = 20
    //    self.SendMoneyButton.clipsToBounds = true
        self.SendMoneyButton.layer.borderWidth = 2
        self.SendMoneyButton.layer.borderColor = UIColor.blackColor().CGColor
        
        self.ReceiveMoneyButton.layer.borderWidth = 2
        self.ReceiveMoneyButton.layer.borderColor = UIColor.blackColor().CGColor
        

        self.LogInButton.layer.cornerRadius = 22
        //    self.LogInButton.clipsToBounds = true
        self.LogInButton.layer.borderWidth = 2
        self.LogInButton.layer.borderColor = UIColor.blueColor().CGColor
        

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    

    @IBAction func sendMoney(sender: AnyObject) {
        
        self.performSegueWithIdentifier(SEGUE_TO_SEND_MONEY_VIEW, sender: nil)
    }
    
    
    @IBAction func ReceiveMoney(sender: AnyObject) {
        
    }
   
    
    @IBAction func LogIn(sender: AnyObject) {
        
        self.performSegueWithIdentifier(SEGUE_TO_LOGIN_SCREEN_FROM_ENTRANCE_VIEW, sender: nil)
    }
    
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       //  Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
