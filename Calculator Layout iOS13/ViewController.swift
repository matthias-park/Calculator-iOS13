//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishiedTypingNumber: Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishiedTypingNumber = true
                
        guard let number = Double(displayLabel.text!) else {
            fatalError("Cannot convert display label text to a Double")
        }
        
        if let calcMethod = sender.currentTitle {
            if calcMethod == "+/-" {
                displayLabel.text = String(number * -1)
            } else if calcMethod == "AC" {
                displayLabel.text = "0"
            } else if calcMethod == "%" {
                displayLabel.text = String(number * 0.01)
            }
        }
        
        
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle {
            if isFinishiedTypingNumber {
                displayLabel.text = numValue
                isFinishiedTypingNumber = false
            } else {
                displayLabel.text = displayLabel.text! + numValue
            }
            
        }
        
    }
    
}

