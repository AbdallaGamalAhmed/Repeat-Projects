//
//  ClaculatorBrain.swift
//  NewCalculator
//
//  Created by Abdalla on 9/27/18.
//  Copyright © 2018 ahmad. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    
    func Add_Func(Number:Double , with Operation : Character)  {
       NumWithOpArray.append(CalcType(Num:Number , Op:Operation))
        
        
    }
    
    
    typealias CalcType = (Num:Double , Op:Character)
    var NumWithOpArray : [CalcType] = []
    
    // 10 + 10 - 10 X 10 - 10 / 10 =   ->   10 + 10 - 100 - 1 =
    
    func MultiPluAndDividedBy_Func()  {
        for (index , Current) in NumWithOpArray.enumerated() {
            
            if Current.Op == "X" || Current.Op == "/" {
                let afterCurrent = NumWithOpArray[index + 1]
                var newCalc : CalcType!
                
                if Current.Op == "X" {
                    newCalc = CalcType(Num:Current.Num * afterCurrent.Num , Op:afterCurrent.Op)
                }else {
                    newCalc = CalcType(Num:Current.Num / afterCurrent.Num , Op:afterCurrent.Op)
                }
                
                NumWithOpArray.remove(at: index)
                NumWithOpArray.remove(at: index)
                NumWithOpArray.insert(newCalc, at: index)
                MultiPluAndDividedBy_Func()
                break
            }
        }
    }
    
    
    func Minus_Func()  {
        for (index , Current) in NumWithOpArray.enumerated() {
            if Current.Op == "-" {
                let afterCurrent = NumWithOpArray[index + 1]
                var newCalc : CalcType!
                
                newCalc = CalcType(Num:Current.Num - afterCurrent.Num , Op:afterCurrent.Op)
                
                NumWithOpArray.remove(at: index)
                NumWithOpArray.remove(at: index)
                NumWithOpArray.insert(newCalc, at: index)
                Minus_Func()
                break
                
                
            }
        }
    }
    
    func restart_Func()  {
        NumWithOpArray = []
    }
    
    func result_Func() -> String {
        MultiPluAndDividedBy_Func()
        Minus_Func()
        
        return String(NumWithOpArray.reduce(0, {$0 + $1.Num}))
    }
    
}
