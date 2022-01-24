//
//  ViewController.swift
//  Prework
//
//  Created by Moziah Cross on 1/19/22.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatTip(_ sender:Any) {
        
        let bill = Double(billTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18,0.2]
        let tip = bill *
        tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmount.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}
