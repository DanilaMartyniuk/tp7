//
//  ViewController.swift
//  Labka7.3
//
//  Created by Denis Borychev on 8.05.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var activityControl: UISegmentedControl!
    
    @IBOutlet weak var sexControl: UISegmentedControl!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "Hi"
    }
    
    @IBAction func calculateTapped(_ sender: Any) {
        var brm:Double = 0
        var bmi:Double = 0
        var arm:Double = 0
        let weight = NumberFormatter().number(from: weightTextField.text!)?.doubleValue
        let height = NumberFormatter().number(from: heightTextField.text!)?.doubleValue
        let age = NumberFormatter().number(from: ageTextField.text!)?.doubleValue
        if(weight == nil||height==nil||age==nil)
        {
            resultLabel.text = "some fields are empty"
        }
        else
        {
            if (sexControl.selectedSegmentIndex == 0)
            {
                brm = 88.362 + (13.97 * weight!) + (4.799 * height!) - (5.677 * age!)
            }
            else
            {
                brm = 447.493 + (9.247 * weight!) + (3.098 * height!) - (4.330 * age!)
            }
            
            if activityControl.selectedSegmentIndex == 0 { arm = 1.2}
            else if activityControl.selectedSegmentIndex == 1 { arm = 1.375}
            else if activityControl.selectedSegmentIndex == 2 { arm = 1.55}
            else if activityControl.selectedSegmentIndex == 3 { arm = 1.725}
            bmi = weight!/(height!*height!)*10000
            resultLabel.text = "BMI: \n\(Int(bmi))\nCalories per day: \n\(Int(brm * arm))"
        }
    }
}

