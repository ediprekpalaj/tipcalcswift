//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Edi Prekpalaj on 7/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var twoPpl: UILabel!
    @IBOutlet weak var threePpl: UILabel!
    @IBOutlet weak var fourPpl: UILabel!
    @IBOutlet weak var darkModeSwitch: UISwitch!
    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var text2: UILabel!
    @IBOutlet weak var text3: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text field input
                let bill = Double(billAmount.text!) ?? 0
                    
                //get total tip by multiplying tip times percentage
                let tipPercentages = [0.15, 0.18, 0.2]
                let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
                let total = bill + tip
                
                
                    
                    
                //update tip amount label
                tipAmount.text = String(format: "$%.2f", tip)
                //update total amount
                totalAmount.text = String(format: "$%.2f", total)
                //update split amount
                twoPpl.text = String(format: "$%.2f", total / 2)
                threePpl.text = String(format: "$%.2f", total / 3)
                fourPpl.text = String(format: "$%.2f", total/4)
            }
    
    @IBAction func darkAction(_ sender: Any) {
        if darkModeSwitch.isOn == true{
            view.backgroundColor = UIColor.black
            tipAmount.textColor = UIColor.white
            totalAmount.textColor = UIColor.white
            twoPpl.textColor = UIColor.white
            threePpl.textColor = UIColor.white
            fourPpl.textColor = UIColor.white
            text1.textColor = UIColor.white
            text2.textColor = UIColor.white
            text3.textColor = UIColor.white
        }else{
            view.backgroundColor = UIColor.white
            tipAmount.textColor = UIColor.black
            totalAmount.textColor = UIColor.black
            twoPpl.textColor = UIColor.black
            threePpl.textColor = UIColor.black
            fourPpl.textColor = UIColor.black
            text1.textColor = UIColor.black
            text2.textColor = UIColor.black
            text3.textColor = UIColor.black
            
        }
    }
    
    
    
    
}
    

