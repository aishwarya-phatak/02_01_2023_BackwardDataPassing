//
//  MathematicalOperations.swift
//  02_01_2023_BackwardDataPassing
//
//  Created by Vishal Jagtap on 20/01/23.
//

import Foundation
protocol MathematicalOperations{
    
    /*var numberOne : Int
    var numberTwo : Int
    
    init(numberOne: Int, numberTwo: Int) {
        self.numberOne = numberOne
        self.numberTwo = numberTwo
    }*/
    
    func addition(n1 : Int, n2 : Int)->Int
    /*{
        var addRes = self.numberOne + self.numberTwo
        print(addRes)
    }*/
    
    func multiply() /*{
        var multiplyRes = self.numberOne * self.numberTwo
        print(multiplyRes)
    }*/
    
    func subtract() /*{
        var subRes = self.numberOne - self.numberTwo
        print(subRes)
    }*/
    
    func divide() /*{
        var divRes = self.numberOne / self.numberTwo
        print(divRes)
    }*/
    
}
