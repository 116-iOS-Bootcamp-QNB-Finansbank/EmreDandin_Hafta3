//
//  CalculatorViewController.swift
//  BasicUIComponents
//
//  Created by Semih Emre ÜNLÜ on 11.09.2021.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    //@IBOutlet var digitButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private var isTyping: Bool = false
    private var operatorTyped: Bool = false
    let ops = Operations()
    var firstNum: Double = 0
    var secondNum: Double = 0
    var operation = ""
    @IBAction func digitButtonTapped(_ sender: UIButton) {
        let digit = String(sender.tag)
        let displayText = resultLabel.text ?? "0"
        
        
        if isTyping {
            if operatorTyped{
                resultLabel.text = displayText + digit
                operatorTyped = false
            }
            else{
                resultLabel.text = displayText + digit
            }
            
        } else {
            resultLabel.text = digit
            isTyping.toggle()
        }
        firstNum = Double(resultLabel.text!)!
    }
    
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        
        let value = NSString(string: resultLabel.text ?? "0").doubleValue
        let tag = sender.title(for: .normal) ?? "="
        if resultLabel.text != "" && tag != "="{
            secondNum = value
            operation = tag
            operatorTyped = true
            resultLabel.text = ""
        }
        else if tag == "="{
        
            resultLabel.text = ops.Operate(firstNum: firstNum, operator: operation, value: secondNum)
            
        }
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
