//
//  HomeViewController.swift
//  Money_Transfer_APP
//
//  Created by serge kone Dossongui on 7/30/16.
//  Copyright © 2016 serge kone Dossongui. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

  
    @IBOutlet weak var ReceiverPhonLabel: UILabel!
    @IBOutlet weak var SenderPhonNumLabel: UILabel!
    @IBOutlet weak var SenderAmountLabel: UILabel!
    @IBOutlet weak var ReceiverAmountLabel: UILabel!
    @IBOutlet weak var TransactionAmountLabel: UILabel!
    
    @IBOutlet weak var editInfoButton: UIButton!
    @IBOutlet weak var TotalAmountLabel: UILabel!
    @IBOutlet weak var DiscountAmountLabel: UILabel!

    @IBOutlet weak var SendAmountButton: UIButton!
    @IBOutlet weak var ChangeAmountButton: UILabel!
  
    @IBOutlet weak var PhoneInfoView: UIView!
    
    @IBOutlet weak var AmountInfoView: UIView!
    @IBOutlet weak var TransactionInfoView: UIView!
   
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var NextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.PhoneInfoView.alpha  = 1
        self.AmountInfoView.alpha = 1
        self.TransactionInfoView.alpha = 0
    
         self.NextButton.hidden = false
        self.backButton.hidden = true
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style:
            .Plain, target: nil, action: nil)
        
        self.title = "Review and Send"
        
        //load default value from previous view
        let defaults = NSUserDefaults.standardUserDefaults()
        
        let RPhon =  defaults.objectForKey(Key_ReceiverNum) as? String
        
        let partA = RPhon?.substringWithRange(Range<String.Index>(start: RPhon!.startIndex, end: (RPhon?.startIndex.advancedBy(3))!))
        
        let partB = RPhon?.substringWithRange(Range<String.Index>(start: (RPhon?.startIndex.advancedBy(3))!, end: (RPhon?.startIndex.advancedBy(6))!))
        
        let partc = RPhon?.substringWithRange(Range<String.Index>(start: (RPhon?.startIndex.advancedBy(6))!, end: (RPhon?.endIndex)!))
        
        let  nstring = partA! + "-" + partB! + "-" + partc!
        print(nstring)

        self.ReceiverPhonLabel.text  = nstring
        
        
        let SPhon =  defaults.objectForKey(Key_SenderNum) as? String
        
        let part1 = SPhon?.substringWithRange(Range<String.Index>(start: SPhon!.startIndex, end: (SPhon?.startIndex.advancedBy(3))!))
        
        let part2 = SPhon?.substringWithRange(Range<String.Index>(start: (SPhon?.startIndex.advancedBy(3))!, end: (SPhon?.startIndex.advancedBy(6))!))
        
        let part3 = SPhon?.substringWithRange(Range<String.Index>(start: (SPhon?.startIndex.advancedBy(6))!, end: (SPhon?.endIndex)!))
        
        let  nstring2 = part1! + "-" + part2! + "-" + part3!
        print(nstring2)
        
        self.SenderPhonNumLabel.text  = nstring2

        

        
  //    self.ReceiverPhonLabel.text  = defaults.objectForKey(Key_ReceiverNum) as? String
        
        
       // self.SenderPhonNumLabel.text  = defaults.objectForKey(Key_SenderNum) as? String
      //  defaults.synchronize()
        
        self.TransactionAmountLabel.text  = defaults.objectForKey(Key_TransactionFees) as? String
        defaults.synchronize()
        
        self.TotalAmountLabel.text  = defaults.objectForKey(Key_TotalAmount) as? String
        defaults.synchronize()
        
        self.SenderAmountLabel.text  = defaults.objectForKey(Key_SendAmount) as? String
        self.ReceiverAmountLabel.text =  defaults.objectForKey(Key_SendAmount) as? String
        

        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    @IBAction func EditSendingInfo(sender: AnyObject) {
        
         self.performSegueWithIdentifier(SEGUE_editInfoToSendMoney_VIEW, sender: nil)
    }
    
    
    @IBAction func FinalSendMoney(sender: AnyObject) {
    }
    
    @IBAction func NextButton(sender: AnyObject) {
        
        
        UIView.animateWithDuration(0.4, animations:
            {
                self.PhoneInfoView.alpha  = 0
                self.AmountInfoView.alpha = 1
                self.TransactionInfoView.alpha = 1
                self.NextButton.hidden = true
                 self.backButton.hidden = false
                
        })

        
    }

    @IBAction func BackButton(sender: AnyObject) {
        
        
        
        UIView.animateWithDuration(0.4, animations:
            {
                self.PhoneInfoView.alpha  = 1
                self.AmountInfoView.alpha = 1
                self.TransactionInfoView.alpha = 0
                self.NextButton.hidden = false
                self.backButton.hidden = true
                
        })

        
        
        
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
