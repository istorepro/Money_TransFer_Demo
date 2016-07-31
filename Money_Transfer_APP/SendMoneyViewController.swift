//
//  SendMoneyViewController.swift
//  Money_Transfer_APP
//
//  Created by serge kone Dossongui on 7/29/16.
//  Copyright © 2016 serge kone Dossongui. All rights reserved.
//

import UIKit

class SendMoneyViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var SenderReceiverView: UIView!
    @IBOutlet var MainView: UIView!
    @IBOutlet weak var AmountInfoView: UIView!
    @IBOutlet weak var TransactionInfoView: UIView!
    @IBOutlet weak var SendButton: UIButton!
    @IBOutlet weak var AddnewReceiverButton: UIButton!
    @IBOutlet weak var ReceiverOptionView: UIView!
    @IBOutlet weak var SelectFRomContactButton: UIButton!
    @IBOutlet weak var SenderNumberField: UITextField!
    @IBOutlet weak var ReceiverNumberField: UITextField!
    
    @IBOutlet weak var ReceiverAmountLabel: UILabel!
    
    @IBOutlet weak var DiscountAmountLabel: UILabel!
    @IBOutlet weak var TransactionFeesLabel: UILabel!
    
    @IBOutlet weak var TotalAmountLabel: UILabel!
    @IBOutlet weak var SenderAmountField: UITextField!
    
    //self eclare variable
    var ReceiverNumber = ""
    var SenderNumber = ""
    var emptyString = ""
    var ReceiverAmount = 0.0
    var SenderAmount = 0.0
    var TotalAmount = 0.0
    var TransactionFees = 0.0
    var DiscountFees = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       //initiliase view that need to appear or disapear
        self.AmountInfoView.alpha = 0
        self.TransactionInfoView.alpha = 0
        self.ReceiverOptionView.alpha = 1
        self.SenderReceiverView.alpha = 0
        
        // make button round
        self.AddnewReceiverButton.layer.cornerRadius = 20
        self.AddnewReceiverButton.clipsToBounds = true
        self.AddnewReceiverButton.layer.borderWidth = 2
        self.AddnewReceiverButton.layer.borderColor = UIColor.blackColor().CGColor
        
      
        
        // make button round
       // self.ContinueButton.layer.cornerRadius = 24
       // self.ContinueButton.clipsToBounds = true
        self.SendButton.layer.borderWidth = 2
        self.SendButton.layer.borderColor = UIColor.blueColor().CGColor
        
        //self.ReceiverAmountLabel.layer.borderWidth = 1
       // self.ReceiverAmountLabel.layer.borderColor = UIColor.blackColor().CGColor

        
        // make button round and border dark
        self.SelectFRomContactButton.layer.cornerRadius = 20
        self.SelectFRomContactButton.clipsToBounds = true
        self.SelectFRomContactButton.layer.borderWidth = 2
        self.SelectFRomContactButton.layer.borderColor = UIColor.blackColor().CGColor
        // Do any additional setup after loading the view.
        
        
        //Textfield Delegate
        ReceiverNumberField.delegate = self
        SenderNumberField.delegate = self
        SenderAmountField.delegate = self
        
        
        
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        //hide it
  
        
    }
    
    
    @IBAction func SendButton(sender: AnyObject) {
        
         SenderNumberField.resignFirstResponder()
         self.performSegueWithIdentifier(SEGUE_TO_LOGIN_SCREEN_FROM_SEND_MONEY_VIEW, sender: nil)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func MainViewTouchEndEditting(sender: AnyObject) {
        
        MainView.endEditing(true)
    }
    
    @IBAction func selectFromContact(sender: AnyObject) {
        // button add selected form contact selected : -remove view and display login view befor contact list
        
        
    }
    
    
    @IBAction func AddNewReceiver(sender: AnyObject) {
       // button add new receiver selected : -remove view and display option for the new receiver
        
        UIView.animateWithDuration(0.4, animations:
            {
               self.SenderReceiverView.alpha = 1
                self.ReceiverOptionView.alpha = 0
                
        
           })
        
        SenderNumberField.becomeFirstResponder()
        
        
    }

    
    
    @IBAction func editingReceiverNumberStart(sender: AnyObject) {
        
        UIView.animateWithDuration(0.4, animations:
            {
                self.SenderReceiverView.alpha = 1
               self.AmountInfoView.alpha = 0
                self.TransactionInfoView.alpha = 0
                
                
        })
       
        
    }
    
    
    
    @IBAction func SenderNumberEditingEnd(sender: AnyObject) {
        
       
        SenderNumber = SenderNumberField.text!
      
        // only if input Sender number is correct

        SenderNumberField.resignFirstResponder()
        ReceiverNumberField.becomeFirstResponder()

        
    }
    
    
    @IBAction func ReceiverNumberEditingEnd(sender: AnyObject) {
        
        ReceiverNumber = ReceiverNumberField.text!
     
        
        ReceiverNumberField.resignFirstResponder()
        
        // display that only if input receive number is correct
        UIView.animateWithDuration(0.3, animations:
            {
                self.AmountInfoView.alpha = 1
                self.SenderAmountField.becomeFirstResponder()
                
        })
        
  
    }
    
    //This function allowed the to know when the return key i push 
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if(string == "\n") {
            textField.resignFirstResponder()
            
            return false
        }
        return true
    }

         
    
    
    @IBAction func SenderAmountDidChange(sender: AnyObject) {
        
    ReceiverAmountLabel.text = String(SenderAmountField.text!._bridgeToObjectiveC().doubleValue)
        
    emptyString = ReceiverAmountLabel.text!
    let varB = emptyString.characters.count+1
        print("pass")
        
        
        if(varB > 4){// if more than one character enter display transaction view
            
            UIView.animateWithDuration(0.3, animations:
                {
                    self.TransactionInfoView.alpha = 1
                    
                    
            })
            
            //calculate Transaction Fees ,Discount ad total amount to pay
            
            SenderAmount = SenderAmountField.text!._bridgeToObjectiveC().doubleValue
            TransactionFees = SenderAmount * 0.18
             TotalAmount = SenderAmount + TransactionFees
            
            self.TransactionFeesLabel.text = String(TransactionFees)
            self.DiscountAmountLabel.text = "0.0"
            self.TotalAmountLabel.text = String(TotalAmount)
            
            
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if(SenderNumber != ""){
            defaults.setValue(String(SenderNumber), forKey: Key_SenderNum)
            }else{
                 defaults.setValue("No Number", forKey: Key_SenderNum)
            }
            defaults.synchronize()
           
            if(ReceiverNumber != ""){
            defaults.setValue(String(ReceiverNumber), forKey: Key_ReceiverNum)
            }else{
                defaults.setValue("No Number", forKey: Key_ReceiverNum)
            }
                defaults.synchronize()

            
        if(TotalAmount != 0.0){
            defaults.setValue(String(TotalAmount), forKey: Key_TotalAmount)
           }else{
                defaults.setValue("Nothing sent", forKey: Key_TotalAmount)
           }
           
            defaults.synchronize()
            
           
            
            if(SenderAmount != 0.0){
                defaults.setValue(String(SenderAmount), forKey: Key_SendAmount)
            }else{
                defaults.setValue("Nothing sent", forKey: Key_SendAmount)
            }
            
            defaults.synchronize()
            
            
            
            if(TransactionFees != 0.0){
            defaults.setValue(String(TransactionFees), forKey: Key_TransactionFees)
            }else{
                 defaults.setValue("Nothing sent", forKey: Key_TransactionFees)
            }
        
            
            defaults.synchronize()

            
            
            
            if(varB >= 10){
                
                  SenderAmountField.resignFirstResponder()
            }
            
            
            
        }
        if(varB <= 4){
            
            UIView.animateWithDuration(0.1, animations:
                {
                    self.TransactionInfoView.alpha = 0
                 
                    
                    
            })
         
            
        }
     
        
        
       
        
    }
    
    
    
    
        
    @IBAction func SenderAmountEndEditing(sender: AnyObject) {
        

        SenderAmount = SenderAmountField.text!._bridgeToObjectiveC().doubleValue
        SenderAmountField.resignFirstResponder()
    
    }
    
    
    
        
        
        
        
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
