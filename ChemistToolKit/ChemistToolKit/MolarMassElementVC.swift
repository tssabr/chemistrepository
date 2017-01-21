//
//  MolarMassElementVC.swift
//  ChemistToolKit
//
//  Created by Adam Ribblett on 1/16/17.
//  Copyright © 2017 IamAdamRibblett. All rights reserved.
//

import UIKit

class MolarMassElementVC: UIViewController {

    var eleName: String!
    var eleSymbol: String!
    var molarMass: NSString!
    var currentNumber: Double = 0.0
    var calculator = MolarMassCalculatorClass.instance
    
    @IBOutlet weak var elementName: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = "\(calculator.currentNumber)"
        elementName.text = eleName

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        let newValue = calculator.addNumber(prevNum: calculator.currentNumber)
        currentNumber = newValue
        numberLabel.text = "\(currentNumber)"
    }

    @IBAction func subtractButtonPressed(_ sender: UIButton) {
        let newValue = calculator.subNumber(prevNum: calculator.currentNumber)
        currentNumber = newValue
        numberLabel.text = "\(currentNumber)"
        
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        let newValue = calculator.clear()
        currentNumber = newValue
        numberLabel.text = "\(currentNumber)"
    }
    
    @IBAction func enterButtonPressed(_ sender: UIButton) {
        
    }
    
    
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
