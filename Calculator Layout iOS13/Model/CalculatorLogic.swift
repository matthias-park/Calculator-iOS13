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
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        
        if let n = number {
            if symbol == "+/-" {
                return n * -1
            } else if symbol == "AC" {
                return 0
            } else if symbol == "%" {
                return n * 0.01
            }
        }
          
        return nil
    }
}
