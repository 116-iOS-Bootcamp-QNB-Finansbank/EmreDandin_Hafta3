//
//  Operations.swift
//  BasicUIComponents
//
//  Created by Emre Dandin on 15.09.2021.
//

import UIKit

class Operations: UIViewController {
    
    public func Operate(firstNum first: Double, operator operators: String, value enteredValue: Double) -> String{
        switch operators {
        case "+" :
            return String(first + enteredValue)
        case "-":
            return String(first - enteredValue)
        case "*":
            return String(first * enteredValue)
        case "/":
            return String(first / enteredValue)
        case "=":
            return String(enteredValue)
        default:
            return " "
        }
    }
}
