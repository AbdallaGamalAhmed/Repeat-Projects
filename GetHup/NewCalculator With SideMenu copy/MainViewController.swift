//
//  MainViewController.swift
//  NewCalculator
//
//  Created by Abdalla on 9/30/18.
//  Copyright © 2018 ahmad. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var BringSideMenu: NSLayoutConstraint!
    
    var IsMenu = false
    
    @IBAction func ButtonSideMenu(_ sender: UIBarButtonItem) {
        
        if IsMenu == false {
            BringSideMenu.constant = self.view.frame.width * 0.3
            IsMenu = true
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded()
            }
        }else {
            BringSideMenu.constant = 500
            IsMenu = false
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded()
            }
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // notification center to Hide sideMenu
        NotificationCenter.default.addObserver(self, selector: #selector(MainViewController.HideMenu_Func), name: NSNotification.Name(rawValue: "HideMenu"), object: nil)
        
        // notification center to make segue
        NotificationCenter.default.addObserver(self, selector: #selector(MainViewController.ContactUs_Func), name: NSNotification.Name(rawValue: "Contact Us"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(MainViewController.AboutUs_Func), name: NSNotification.Name(rawValue: "About Us"), object: nil)
    }
    
    @objc func HideMenu_Func()  {
        BringSideMenu.constant = 500
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
        
        IsMenu = false
    }
    
    @objc func ContactUs_Func()  {
        performSegue(withIdentifier: "Contact", sender: nil)
        
    }
    @objc func AboutUs_Func()  {
        performSegue(withIdentifier: "About", sender: nil)
    }
    
    

    
}
