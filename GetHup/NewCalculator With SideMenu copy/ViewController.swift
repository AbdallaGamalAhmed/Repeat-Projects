//
//  ViewController.swift
//  NewCalculator
//
//  Created by Abdalla on 9/26/18.
//  Copyright © 2018 ahmad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let Brain_instance = CalculatorBrain()
    
    
    var EqualButtonIsClick = false
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle{ return .lightContent}
    
    // Outlet Contacts
    @IBOutlet weak var LableShowOperations: UILabel!
    @IBOutlet weak var LableResults: UILabel!
    
    // Action Contacts
    
    @IBAction func ButtonNumbersAction(_ sender: UIButton) {
        if EqualButtonIsClick == false {
            
            
            if LableResults.text == "0"  { LableResults.text = "" }
            
            LableResults.text! += String(sender.tag)
            
            
        } else {
            LableResults.text = String(sender.tag)
            EqualButtonIsClick = false
            LableShowOperations.text = ""
        }
        LableShowOperations.text! += String(sender.tag)
    }
    
    @IBAction func ButtonOperationsAction(_ sender: UIButton) {
        if LableResults.text == "" || LableResults.text == "0" { return
        }
        
        Brain_instance.Add_Func(Number: Double(LableResults.text!)!, with: Character(sender.currentTitle!))
        
        if sender.currentTitle == "=" {
            LableResults.text = Brain_instance.result_Func()
            Brain_instance.restart_Func()
            EqualButtonIsClick = true
        }else{
            LableResults.text = ""
            
        }
        LableShowOperations.text! += sender.currentTitle!
    }
    
    
    @IBAction func ButtonAC(_ sender: UIButton) {
        Brain_instance.restart_Func()
        LableResults.text = ""
        LableShowOperations.text = ""
    }
    
    @IBAction func ButtonPluseMinuse(_ sender: UIButton) {
        if LableResults.text == "" || LableResults.text == "0" { return }
        LableResults.text = String(Double(LableResults.text!)! * -1)
        EqualButtonIsClick = true
    }
    
    @IBAction func ButtonDividedByHundred(_ sender: UIButton) {
        if LableResults.text == "" || LableResults.text == "0" { return }
        
        LableResults.text = String(Double(LableResults.text!)! / 100)
        EqualButtonIsClick = true
        
        
    }
    
    @IBAction func ButtonDot(_ sender: UIButton) {
        if !(LableResults.text?.contains("."))! {
            LableResults.text! += "."
            LableShowOperations.text! += "."
        }
        
    }
    
    
    
    
    // ----- Notefication Center -----
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
   
    
    
    
}

