//
//  ViewController.swift
//  Sukhpreet-Saini_COMP2125-Sec001_Lab03-Exercise2
//
//  Created by Sukhpreet Saini on 2025-03-14.
//

import UIKit

class ViewController: UIViewController {
    
    //Textfield for txtBill
    @IBOutlet weak var txtBill: UITextField!
    
    //Label for X% tip in Custom Tip Percentage
    @IBOutlet weak var sliderTip: UILabel!
    
    //Label for X% tip
    @IBOutlet weak var slider2Tip: UILabel!
    
    //Label for 15% tip
    @IBOutlet weak var lbl15Tip: UILabel!
    
    //Label for 15% tip Total_Amount
    @IBOutlet weak var lbl15Total: UILabel!
    
    //Label for X% tip box
    @IBOutlet weak var lblXTip: UILabel!
    
    //Label for X% tip total
    @IBOutlet weak var lblXTotal: UILabel!
    
    
    // All_Variable
    var billAmount:Double? = 1.0
    
    var tipPercent15:Double? = 0.0
    
    var totalAmt15:Double? = 0.0
    
    var tipPercentX:Double? = 0.0
    
    var totalAmtX:Double? = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Func. for slider
    @IBAction func slider(_ sender: UISlider)
    {
        let customTip = Double(round(sender.value))
                
        sliderTip.text = String(format: "%.0f %%", customTip)
        slider2Tip.text = String(format: "%.0f %%", customTip)
                
        // Ensure billAmount is not nil and convert it
        if let billText = txtBill.text, let bill = Double(billText) {
            billAmount = bill
                    
            // Calculate tip for 15%
            tipPercent15 = billAmount! * 0.15
            totalAmt15 = billAmount! + tipPercent15!
                    
            // Format the results to two decimal places
            lbl15Tip.text = String(format: "%.2f", tipPercent15!)
            lbl15Total.text = String(format: "%.2f", totalAmt15!)
                    
            // Calculate custom tip
            tipPercentX = billAmount! * (customTip / 100)
            totalAmtX = billAmount! + tipPercentX!
                    
            // Format the results to two decimal places
            lblXTip.text = String(format: "%.2f", tipPercentX!)
            lblXTotal.text = String(format: "%.2f", totalAmtX!)
        }
    }
}
