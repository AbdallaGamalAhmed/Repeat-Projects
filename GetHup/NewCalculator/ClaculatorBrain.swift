//
//  ClaculatorBrain.swift
//  NewCalculator
//
//  Created by Abdalla on 9/27/18.
//  Copyright © 2018 ahmad. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    func Add_Func(Number : Double , with Operation : Character)  {
        NumWithOpArray.append(calcElemnt(Num : Number , Op : Operation))
    }
    
    
    typealias calcElemnt = (Num : Double , Op : Character)
    
    var NumWithOpArray : [calcElemnt] = []
    
    // 10 + 10 X 10 - 10 / 10 =     ->     10 + 100 - 1 =
    
    
    func result_Func() -> String {
        CalculatMultiplyAndDevidedBy_Func()
        Minuse_Func()
        
        return String(NumWithOpArray.reduce(0, {$0 + $1.Num}))
    }
    
    
    
    func CalculatMultiplyAndDevidedBy_Func()  {
        for (index , Current) in NumWithOpArray.enumerated() {
            if Current.Op == "X" || Current.Op == "/" {
                let afterCurrent = NumWithOpArray[index + 1]
                var newCalc : calcElemnt!
                if Current.Op == "X" {
                    newCalc = calcElemnt(Num : Current.Num * afterCurrent.Num  , Op : afterCurrent.Op)
                }else if Current.Op == "/" {
                    newCalc = calcElemnt(Num : Current.Num / afterCurrent.Num  , Op : afterCurrent.Op)                }
                NumWithOpArray.remove(at: index)
                NumWithOpArray.remove(at: index)
                NumWithOpArray.insert(newCalc, at: index)
                
                CalculatMultiplyAndDevidedBy_Func()
                
                break
                
            }
        }
    }
    
    func Minuse_Func()  {
        for (index , Current) in NumWithOpArray.enumerated() {
            if Current.Op == "-" {
                let afterCurent = NumWithOpArray[index + 1]
                var newCalc : calcElemnt!
                
                newCalc = calcElemnt(Num : Current.Num - afterCurent.Num , Op : afterCurent.Op)
                
                NumWithOpArray.remove(at: index)
                NumWithOpArray.remove(at: index)
                
                NumWithOpArray.insert(newCalc, at: index)
                
                Minuse_Func()
                
                break
                
            }
        }
    }
    
    func restart()  {
        NumWithOpArray = []
    }
    
    
    
    
}
