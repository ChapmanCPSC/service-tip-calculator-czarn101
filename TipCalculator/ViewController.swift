//
//  ViewController.swift
//  TipCalculator
//
//  Created by Albert Pierce on 3/9/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var billAmount: UITextField!

    @IBOutlet weak var serviceScore: UITextField!
    
    @IBAction func calculateTip(sender: AnyObject) {
        
        let bill = self.billAmount.text!
        
        let totalBill = Double.init(bill)
        //(bill as NSString).doubleValue
        
        let score = self.serviceScore.text!
        let serviceScore = Int.init(score)
        //(score as NSString).integerValue
        
        if (totalBill == nil || serviceScore == nil) {
            let alert: UIAlertController = UIAlertController(title: "INVALID INPUT", message: "Please enter numerical values.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in}))
            presentViewController(alert, animated: true, completion: nil)
        } else {
        
            if (serviceScore >= 1 && serviceScore <= 3){
                let tip = 0.1
                let tipAmount : Double = totalBill! * tip
                displayTip.text = String(tipAmount)
                
            }
            else if (serviceScore >= 4 && serviceScore <= 5){
                let tip = 0.13
                let tipAmount : Double = totalBill! * tip
                displayTip.text = String(tipAmount)
            }
            else if(serviceScore >= 6 && serviceScore <= 7){
                let tip = 0.15
                let tipAmount : Double = totalBill! * tip
                displayTip.text = String(tipAmount)
            }
            else if(serviceScore >= 8 && serviceScore <= 9){
                let tip = 0.20
                let tipAmount : Double = totalBill! * tip
                displayTip.text = String(tipAmount)
            }
            else if(serviceScore == 10){
                let tip = 0.25
                let tipAmount : Double = totalBill! * tip
                displayTip.text = String(tipAmount)
            }
            
        }
    }
    
    
    @IBOutlet weak var displayTip: UILabel!
    
    
    
    
    
    
    
}

