//
//  ViewController.swift
//  FibonacciApp
//
//  Created by Taylor Boren on 6/19/15.
//  Copyright (c) 2015 Taylor Boren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var fs = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateSequence()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var sliderValue: UITextField!
    @IBOutlet weak var includeZeroValue: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sequence: UITextView!
    @IBOutlet weak var mySwitch: UISwitch!
    
    
    @IBAction func updateSequence(){
        sliderValue.text = String(Int(slider.value))
        includeZeroValue.text = mySwitch.on ? "Yes" : "No"
        slider.maximumValue = mySwitch.on ? 94 : 93
        fs = FibonacciSequence(numberOfItemsInSequence: UInt(slider.value), includesZero: mySwitch.on)
        sequence.text = fs.values.description
    }
    
}

