//
//  UiView Design.swift
//  Save Notes
//
//  Created by Abdalla on 9/10/18.
//  Copyright © 2018 Abdalla. All rights reserved.
//

import UIKit
@IBDesignable
class UiView_Design: UIView {
    
    // Gradiant Layer
    
    @IBInspectable var FirstColor : UIColor = UIColor.clear{
        didSet{
            UpdateView()
        }
    }
    
    @IBInspectable var SecondColor : UIColor = UIColor.clear{
        didSet{
            UpdateView()
        }
    }
    
    override class var layerClass : AnyClass{
        return CAGradientLayer.self
    }
    
    func UpdateView()  {
        let Layer = self.layer as! CAGradientLayer
        Layer.colors = [FirstColor.cgColor , SecondColor.cgColor]
        
    }
    
    // Shadow
    
    @IBInspectable var ShadowColor : UIColor = UIColor.clear{
        didSet{
            self.layer.shadowColor = ShadowColor.cgColor
        }
    }
    
    
    @IBInspectable var ShadowRadius : CGFloat {
        get{
            return layer.shadowRadius
        }
        set{
            layer.shadowRadius = newValue
        }
    }
    
    
    
    @IBInspectable var ShadowOpacity : Float {
        get{
            return layer.shadowOpacity
        }
        set{
            layer.shadowOpacity = newValue
        }
    }
    
    
    @IBInspectable
    var ShadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
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
}
