//
//  ViewController2.swift
//  TableViewNew
//
//  Created by Abdalla on 10/2/18.
//  Copyright © 2018 ahmad. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var Image_LanguageImage: UIImageView!
    @IBOutlet weak var Lable_LanguageName: UILabel!
    @IBOutlet weak var TextView_LanguageInformation: UITextView!
    @IBOutlet weak var AllHeight: NSLayoutConstraint!
    
    
    // variable to recive information from preper for segue function
    
    var ReciveInformation : Programming_Language_Object!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Image_LanguageImage.image = ReciveInformation.Image_var
        Lable_LanguageName.text = ReciveInformation.Name_var
        TextView_LanguageInformation.text = ReciveInformation.Information_var
        
        
    }
    
    
    // code to make textview height contain all data
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let fixedWidth  = TextView_LanguageInformation.frame.size.width
        
        TextView_LanguageInformation.sizeThatFits(CGSize(width: fixedWidth , height: CGFloat.greatestFiniteMagnitude))
        
        let newSize = TextView_LanguageInformation.sizeThatFits(CGSize(width: fixedWidth , height: CGFloat.greatestFiniteMagnitude))
        
        var newFrame = TextView_LanguageInformation.frame
        newFrame.size = CGSize(width: max(newSize.width , fixedWidth) , height: newSize.height)
        
        AllHeight.constant = newFrame.size.height + 200
        
        view.layoutIfNeeded()
    }
    
    
    // code to share information by using share button
    
    var activityViewController : UIActivityViewController!
    
    @IBAction func ShareButton_Action(_ sender: UIBarButtonItem) {
        
        let ImageToShare : UIImage = Image_LanguageImage.image!
        let TextToShare : String = Lable_LanguageName.text! + " : " + TextView_LanguageInformation
            .text!
        
        activityViewController = UIActivityViewController(activityItems: [ImageToShare , TextToShare], applicationActivities: nil)
        
        self.present(activityViewController, animated: true, completion: nil)
        
    }
    

   

}
