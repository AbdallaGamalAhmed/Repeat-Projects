//
//  ViewController.swift
//  TableViewNew
//
//  Created by Abdalla on 10/1/18.
//  Copyright © 2018 ahmad. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
  
    
    // OutLet Contacts
    
    @IBOutlet weak var Table_MyTableView: UITableView!
    
    
    // how many time cell will repeat
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return Simple_DataBase.Language_Array.count
        
    }
    
    // which cell will repeat
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell_Let = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
            
                cell_Let.Lable_Cell.text = Simple_DataBase.Language_Array[indexPath.row].Name_var
                cell_Let.Image_Cell.image = Simple_DataBase.Language_Array[indexPath.row].Image_var
            
            
            return cell_Let
        }
    
    
    // what will happen when click on the cell
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Go", sender: indexPath.row)
    }
    
    
    // prepare for segue function
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextView = segue.destination as? ViewController2 {
            
            nextView.ReciveInformation = Simple_DataBase.Language_Array[sender as! Int]
            
        }
    }
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            Simple_DataBase.AddingToArray()
            Table_MyTableView.delegate = self
            Table_MyTableView.dataSource = self
            
        }
        
        
        
        
}

