//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UIView!
    
    var tip = 0.0

    @IBAction func tipChanged(_ sender: UIButton) {
        //Deselect all button that triggered
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        //Select pressed button
        sender.isSelected = true
        //get current title of pressed button
        let buttonTitle = sender.currentTitle!
        //remove last string character (%) from current title of pressed button
        let buttonTitleMinusPercnetSign = String(buttonTitle.dropLast())
        //turn string into a double
        let buttonTitleAsNumber = Double(buttonTitleMinusPercnetSign)!
        //divide the percent
        tip = buttonTitleAsNumber / 100

    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        print(tip)
    }
    

    
}

