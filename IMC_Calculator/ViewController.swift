//
//  ViewController.swift
//  IMC_Calculator
//
//  Created by somkiat puisungnoen on 3/12/2561 BE.
//  Copyright © 2561 ___UP1___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var operand1TF: UITextField!

    @IBOutlet weak var operand2TF: UITextField!

    @IBOutlet weak var resultLB: UILabel!

    var result = 0

    @IBAction func onPlus(_ sender: UIButton) {
        let op1 = Int(operand1TF.text!)
        let op2 = Int(operand2TF.text!)
        let calculator = Calculator()
        result = calculator.plus(operand1: op1!, operand2: op2!)
    }

    @IBAction func onDivide(_ sender: UIButton) {
        let op1 = Int(operand1TF.text!)
        let op2 = Int(operand2TF.text!)
        let calculator = Calculator()
        result = calculator.divide(operand1: op1!, operand2: op2!)
    }

    @IBAction func onSummary(_ sender: UIButton) {
        operand1TF.text = ""
        operand2TF.text = ""
        resultLB.text = "Result=\(result)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
