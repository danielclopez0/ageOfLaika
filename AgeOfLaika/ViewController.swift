//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Daniel Lopez on 11/16/14.
//  Copyright (c) 2014 Daniel Lopez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var humanYearsText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButton(sender: UIButton) {
        let ageFromTextField = Double ((humanYearsText.text as NSString).doubleValue)
        
        var realDogYears:Double

        if ageFromTextField > 2 {
            realDogYears = (2 * 10.5) + ((ageFromTextField-2) * 4)

        }
        else {
            realDogYears = ageFromTextField * 10.5
        }


        
        dogYearsLabel.text = "\(realDogYears)" + " years old"
        humanYearsText.text = ""
        humanYearsText.resignFirstResponder()
        dogYearsLabel.hidden = false
    
    }

}

