//
//  UiButton Design.swift
//  Save Notes
//
//  Created by Abdalla on 9/10/18.
//  Copyright © 2018 Abdalla. All rights reserved.
//

import UIKit
@IBDesignable
class UiButton_Design: UIButton {
    
    
    @IBInspectable var BorderColor : UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = BorderColor.cgColor
        }
    }
    
    
    @IBInspectable var BorderWidth : CGFloat  {
        get{
            return layer.borderWidth
        }
        set{
            layer.borderWidth = newValue
        }
    }
    
    
    
    @IBInspectable var CornerRadius : CGFloat  {
        get{
            return layer.cornerRadius
        }
        set{
            layer.cornerRadius = newValue
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.height / 2
        
    }
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//
//        self.clipsToBounds = true
//
//    }
//    override func awakeFromNib() {
//        super.awakeFromNib()
//
//
//    }
    
   
    
    
}
