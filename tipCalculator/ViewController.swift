//
//  ViewController.swift
//  tipCalculator
//
//  Created by Miguel Aceves on 1/23/19.
//  Copyright © 2019 Miguel Aceves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet var billField: UITextField!
	@IBOutlet var tipLabel: UILabel!
	@IBOutlet var totalLabel: UILabel!
	@IBOutlet var tipControl: UISegmentedControl!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}


	@IBAction func onTap(_ sender: Any) {
		
		view.endEditing(true)
	}
	
	@IBAction func calculateTip(_ sender: Any) {
		
		//get bill amount
		let bill =  Double(billField.text!) ?? 0
		
		//calculate the tip and total
		let tipPercentages = [0.15, 0.18, 0.20]
		
		let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
		let total = bill + tip
		
		//update the tip and total labels
		tipLabel.text = String.init(format: "$%.2f", tip)
		totalLabel.text = String.init(format: "$%.2f", total)
	}
	
}

