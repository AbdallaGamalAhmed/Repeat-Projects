//
//  ViewController.swift
//  TimerApp
//
//  Created by Abdalla on 10/5/18.
//  Copyright © 2018 Abdalla. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle{return .lightContent }
    
    // -------- Start variable and constance
    var timer_var:Timer?
    var secondes_var = 0
    var nameTF_var : UITextField?
    var listNames = [Taskes_Entity]()
    
    
    
    // --------- End variable and constance
    
    
    // -------- Start outlet contacts
    @IBOutlet weak var Constrain_BringTimer: NSLayoutConstraint!
    @IBOutlet weak var Constrain_BringTableView: NSLayoutConstraint!
    @IBOutlet weak var Lable_Timer: UILabel!
    @IBOutlet weak var TableView_List: UITableView!
    @IBOutlet weak var Button_StopOutlet: UiButton_Design!
    @IBOutlet weak var Button_PauseOutLet: UiButton_Design!
    @IBOutlet weak var Button_StartOutLet: UiButton_Design!
    @IBOutlet weak var Button_TaskesOutLet: UiButton_Design!
    
    // -------- End Outlet contacts
    
    
    // -------- Start Action contacts
    
    @IBAction func Button_StartApp(_ sender: UIButton) { // Button_StartApp
        
        Constrain_BringTimer.constant = 0
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
        RunTimer_func()
        
        
    }
    
    @IBAction func Button_Stop(_ sender: UIButton) { // Button_Stop
        if secondes_var == 0 {
            return
        }
        Button_PauseOutLet.setTitle("Start", for: .normal)
        timer_var?.invalidate()
        AllertController_func()
    }
    
    
    @IBAction func Button_Pause(_ sender: UIButton) { // Button_Pause
        
        if Button_PauseOutLet.currentTitle == "Pause" {
            timer_var?.invalidate()
            Button_PauseOutLet.setTitle("Start", for: .normal)
            
        }else if Button_PauseOutLet.currentTitle == "Start" {
            Button_PauseOutLet.setTitle("Pause", for: .normal)
            RunTimer_func()
        }
        
        
    }
    
    @IBAction func Button_End(_ sender: UIButton) { // Button_End
        
        Constrain_BringTimer.constant = -1000
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
        
        secondes_var = 0
        timer_var?.invalidate()
        
        Lable_Timer.text = TimeString_func(time: TimeInterval(secondes_var))
        
    }
    
    
    @IBAction func Button_Taskes(_ sender: UIButton) { // Button_Taskes
        
        if Button_TaskesOutLet.currentTitle == "Taskes" {
            
            Constrain_BringTableView.constant = 0
            Button_TaskesOutLet.setTitle("Hide", for: .normal)
            
        }else if Button_TaskesOutLet.currentTitle == "Hide" {
            
            Constrain_BringTableView.constant = 1000
            Button_TaskesOutLet.setTitle("Taskes", for: .normal)
        }
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
    // -------- End Action contacts
    
    
    
    // ------------ Start AlertController
    
    func AllertController_func()  {
        
        let alertControle_let = UIAlertController(title: "Enter Your Task Name", message: "your task", preferredStyle: .alert)
        alertControle_let.addTextField { (nameTF) in
            nameTF.placeholder = "Name"
            self.nameTF_var = nameTF
        }
        
        let alertAction1_let = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        
        let alertAction2_let = UIAlertAction(title: "Save", style: .default) { (action) in
            self.SaveToCoreData_func()
        }
        
        alertControle_let.addAction(alertAction1_let)
        alertControle_let.addAction(alertAction2_let)
        present(alertControle_let, animated: true, completion: nil)
    }
    
    
    // -------------- End AlertController
    
    
    // ------- Start Timer Functions
    // timer format
    func TimeString_func(time : TimeInterval) -> String {
        let hours_let = Int(time) / 3600
        let mintes_let = Int(time) / 60 % 60
        let seconds_let = Int(time) % 60
        
        return String(format: "%02i:%02i:%02i", hours_let , mintes_let , seconds_let)
    }
    
    // timer update
    @objc func UpdatTimer_func()  {
        secondes_var += 1
        Lable_Timer.text = TimeString_func(time: TimeInterval(secondes_var))
    }
    
    // timer run
    func RunTimer_func()  {
        timer_var = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.UpdatTimer_func), userInfo: nil, repeats: true)
    }
    
    // -------- End Timer Functions
    
    
    
    // ---------- Start Function To Save in CoreData
    
    func SaveToCoreData_func()  {
        
        let MyTaske_entity = Taskes_Entity(context: Context_AD)
        
        MyTaske_entity.name_ent = nameTF_var?.text
        MyTaske_entity.time_ent = TimeString_func(time: TimeInterval(secondes_var))
        
        do {
            if nameTF_var?.text != "" {
                try Context_AD.save()
                
                let AlertControl_let = UIAlertController(title: "Good Job", message: "Your Task [ \(nameTF_var!.text!) ] Is Saved", preferredStyle: .alert)
                
                let AlertAction_let = UIAlertAction(title: "Ok", style: .default) { (action) in
                    
                    self.Button_TaskesOutLet.setTitle("Hide", for: .normal)
                    self.loadData_func()
                    self.Constrain_BringTableView.constant = 0
                    
                    UIView.animate(withDuration: 0.5, animations: {
                        self.view.layoutIfNeeded()
                    })
                }
                
                AlertControl_let.addAction(AlertAction_let)
                present(AlertControl_let, animated: true, completion: nil)
                
                secondes_var = 0
                timer_var?.invalidate()
                Button_PauseOutLet.setTitle("Start", for: .normal)
                Lable_Timer.text = TimeString_func(time: TimeInterval(secondes_var))
                
            }else {
                let AlertControl_let = UIAlertController(title: "Opps", message: "Please Write The Name For Your Task", preferredStyle: .alert)
                
                let AlertAction_let = UIAlertAction(title: "Ok", style: .default, handler: nil)
                AlertControl_let.addAction(AlertAction_let)
                present(AlertControl_let, animated: true, completion: nil)
                
            }
            
            
            
        } catch  {
            print("Error")
        }
        
        
    }
    
    // ---------- End Function To Save in CoreData
    
    
    // ----------- Start Function To Load Data
    
    func loadData_func()  {
        
        let fetchRequest : NSFetchRequest<Taskes_Entity> = Taskes_Entity.fetchRequest()
        
        do {
            listNames = try Context_AD.fetch(fetchRequest)
            TableView_List.reloadData()
        } catch  {
            print("Error")
        }
        
    }
    
    
    // ----------- End Function To Load Data
    
    
    
    // ----- Start TableView Functions
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listNames.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell_let = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell_let.Lable_TaskName.text = listNames[indexPath.row].name_ent
        cell_let.Lable_Time.text = listNames[indexPath.row].time_ent
        
        return cell_let
    }
    
    // ------ Functions to Delet From TableView
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return UITableViewCell.EditingStyle.delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            Context_AD.delete(listNames[indexPath.row])
            
            do {
                try Context_AD.save()
                self.listNames.remove(at: indexPath.row)
                TableView_List.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            }catch {
              print("Error")
            }
        }
    }
    
    // ------ End TableView Functions
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView_List.layer.cornerRadius = 20
        
        TableView_List.dataSource = self
        TableView_List.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loadData_func()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        //        Constrain_BringTableView.constant = 1000
        //        UIView.animate(withDuration: 0.5) {
        //            self.view.layoutIfNeeded()
        //        }
        
    }
    
    
}

