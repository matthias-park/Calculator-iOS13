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
    
    var isFinishiedTypingNumber: Bool = false
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishiedTypingNumber = true
        displayLabel.text = " 0  "
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

