//
//  ViewController.swift
//  labka7.1
//
//  Created by Denis Borychev on 6.05.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var switchIndicator: UILabel!
    
    @IBOutlet weak var backgroundSwitch: UISwitch!
    
    @IBAction func backgroundSwitchTapped(_ sender: Any) {
        if backgroundSwitch.isOn
        {
            switchIndicator.text = ""
            view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!)
        }
        else{
            switchIndicator.text = "Touch me"
            view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2")!)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        switchIndicator.textColor = UIColor.black
        switchIndicator.text = "Touch me"
        view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2")!)
        backgroundSwitch.setOn(false, animated: false)
    }


}

