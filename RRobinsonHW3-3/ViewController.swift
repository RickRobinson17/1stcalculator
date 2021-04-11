//
//  ViewController.swift
//  RRobinsonHW3-3
//
//  Created by Rick Robinson on 3/22/21.
//

import UIKit

class ViewController: UIViewController {
    var operand1: Double = 0.0
    var operand2: Double = 0.0
    var result: Double = 0.0
    let maxDigits = 10
    var operate:Character = "+"
    @IBOutlet weak var ResultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //PLUS MINUS BUTTON
    @IBAction func PlusMinusBtnAction(_ sender: Any) {
        var text = ResultLabel.text!
        if text == "0" {
            text = "-"}
       ResultLabel.text = text}
    
    //ADDITION BUTTON
    @IBAction func AddBtnAction(_ sender: Any) {
        let text:String = ResultLabel.text!
        operand1 = (text as NSString).doubleValue
       ResultLabel.text = "0"
        operate = "+"
    }
    //MULTIPLITCATION BUTTON
    @IBAction func MultBtnAction(_ sender: Any) {
        let text:String = ResultLabel.text!
        operand1 = (text as NSString).doubleValue
       ResultLabel.text = "0"
        operate = "x"
    }
    //EQUAL BUTTON
    @IBAction func EqlBtnAction(_ sender: Any) {
        var text:String = ResultLabel.text!
        operand2 = (text as NSString).doubleValue
        switch operate {
        case "+":result = operand1 + operand2
        case "-":result = operand1 - operand2
            print("Result = \(result)")
        case "x":result = operand1 * operand2
        case "/":if operand2 != 0 {result = operand1 / operand2}
        else {
            ResultLabel.text = "Error"
            return
            
        }
        default:result = operand1 + operand2}
      
        if (result - Double(Int(result))) == 0 {text = String(Int(result))}
        else {text = String(result)}
        ResultLabel.text = text
    }
    //DIVISION BUTTON
    @IBAction func DivBtnAction(_ sender: Any) {
        let text:String = ResultLabel.text!
        operand1 = (text as NSString).doubleValue
       ResultLabel.text = "0"
        operate = "/"

    }
    //BACK BUTTON
    @IBAction func BackBtnAction(_ sender: Any) {
        var myStr = ResultLabel.text!
        let endIndex = myStr.index(myStr.endIndex, offsetBy: -1)
        myStr = String(myStr[..<endIndex])
        ResultLabel.text = myStr
        
    }
    //SUBTRACTION BUTTON
    @IBAction func SubBtnAction(_ sender: Any) {
        let text:String = ResultLabel.text!
        operand1 = (text as NSString).doubleValue
       ResultLabel.text = "0"
        operate = "-"
    }
    

    //DIGIT BUTTON
    @IBAction func DigitBtnAction(_ sender: UIButton) {
        let number = Int(sender.tag)
        var text = ResultLabel.text!
        
        if text.count >= maxDigits{
            return}
        if text == "0"{
            text = String(number)
        }
        else {
            text = text + String(number)}
        ResultLabel.text = text}
    
    //CLEAR BUTTON
    @IBAction func ClrBtnAction(_ sender: Any) {
        operand1 = 0.0
        operand2 = 0.0
        result = 0.0
        ResultLabel.text = "0"
    }
    
    
    //DECIMAL BUTTON
    @IBAction func DecBtnAction(_ sender: Any) {
        var text:String = ResultLabel.text!
        if !text.contains(".")  {
            text = text + "."
            ResultLabel.text = text
    }
    
    
    
    
    
    
    
    
    
    
    
}


}
