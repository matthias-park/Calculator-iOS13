//
//  CalculatorLogic.swift
//  Calculator Layout iOS13
//
//  Created by JUNSOO PARK on 2022-03-10.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let n = number {
            switch symbol {
            case "+/-":
                return n * -1
            case "AC":
                return 0
            case "%":
                return n * 0.01
            case "=":
                return performTwoNumberCalculation(n2: n)
            default:
                intermediateCalculation = (n1: n, calcMethod: symbol)
            }
        }
        return nil
    }
    
    func performTwoNumberCalculation(n2: Double) -> Double? {
        if let n1 = intermediateCalculation?.n1,
            let operation = intermediateCalculation?.calcMethod {
            
            switch operation  {
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "×":
                return n1 * n2
            case "÷":
                return n1 / n2
            default:
                fatalError("the operation passed in does not match any cases of the cases")
            }
        }
        return nil
    }
}
