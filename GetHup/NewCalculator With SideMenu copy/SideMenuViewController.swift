//
//  SideMenuViewController.swift
//  NewCalculator
//
//  Created by Abdalla on 9/30/18.
//  Copyright © 2018 ahmad. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {

    var ButtonSide : String!
    
    
    @IBAction func ButtonsSideMenu(_ sender: UIButton) {
        if sender.tag == 0 {
            ButtonSide = "MainCalculator"
        }else if sender.tag == 1 {
            ButtonSide = "Contact Us"
        }else {
            ButtonSide = "About Us"
        }
        
        NotificationCenter.default.post( name: NSNotification.Name (rawValue:  ButtonSide), object: nil)
        
        NotificationCenter.default.post( name: NSNotification.Name (rawValue:  "HideMenu"), object: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

 

}
