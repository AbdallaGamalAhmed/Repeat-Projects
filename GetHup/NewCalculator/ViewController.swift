//
//  ViewController.swift
//  NewCalculator
//
//  Created by Abdalla on 9/26/18.
//  Copyright © 2018 ahmad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle{ return .lightContent}
    // ---------------- Start OutLet Contacts --------------
    @IBOutlet weak var LableResult: UILabel!
    @IBOutlet weak var lableShowOperation: UILabel!
    
    
    
    // ---------------- End OutLet Contacts --------------
    
    
    
    
    //----------------------------------------------------------
    
    
    
    
   
    
    // --------------- Start Actions Contacts ------------------
   
    // - Start Numbers Buttons Action -
    
    var isEqualButtonIsClick = false
    
    @IBAction func NumbersButtons(_ sender: UIButton) {
        
        if isEqualButtonIsClick == false {
            
            if LableResult.text == "0" { LableResult.text = "" }
            
            LableResult.text! += String(sender.tag)
            
        }else {
            
            LableResult.text = String(sender.tag)
            lableShowOperation.text = ""
            isEqualButtonIsClick = false
        }

        lableShowOperation.text! += String(sender.tag)
    }
    
    // - End Numbers Buttons Action -
    
    
    
    
    
    //----------------------------------------------------------
    
    
    
    
    
 
    let Brain = CalculatorBrain()
    
    // - Start Operation Buttons Action -
    
    @IBAction func OperationButtons(_ sender: UIButton) {
        
        if LableResult.text != "" && LableResult.text != "0" {
            
            Brain.Add_Func(Number: Double(LableResult.text!)!, with: Character(sender.currentTitle!))
            
            if sender.currentTitle == "=" {
                
                LableResult.text = Brain.result_Func()
                Brain.restart()
                isEqualButtonIsClick = true
            }else {
                
                LableResult.text = ""
                
            }
            
            
            lableShowOperation.text! += sender.currentTitle!
        }
    }
    // - End Operation Buttons Action -
    
    
   // ----------------------------------------------
    

    @IBAction func ButtonAC(_ sender: UIButton) {
        Brain.restart()
        LableResult.text = ""
        lableShowOperation.text = ""
    }
    
    
    
    @IBAction func ButtonPluseMinuse(_ sender: UIButton) {
        
        LableResult.text = String(Double(LableResult.text!)! * -1)
        isEqualButtonIsClick = true
    }
    
    
    @IBAction func ButtonDeVidedByHundred(_ sender: UIButton) {
        LableResult.text = String(Double(LableResult.text!)! / 100)
        isEqualButtonIsClick = true
    }
    
    
    
    
    @IBAction func DotButton(_ sender: UIButton) {
        if !(LableResult.text?.contains("."))! {
            LableResult.text! += "."
            lableShowOperation.text! += "."
        }
    }

    
    // ----------------- End Action Contacts --------------
    
    
    
    
    
    
    //----------------------------------------------------------
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
}

