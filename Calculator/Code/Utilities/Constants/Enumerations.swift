//
//  Enumerations.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 25.11.23.
//

import Foundation

enum Operation {
    case add, subtract, multiply, divide, equal, none
}

enum CalcButton: String {
    case one        = "1"
    case two        = "2"
    case three      = "3"
    case four       = "4"
    case five       = "5"
    case six        = "6"
    case seven      = "7"
    case eight      = "8"
    case nine       = "9"
    case zero       = "0"
    case add        = "+"
    case subtract   = "-"
    case multiply   = "×"
    case divide     = "÷"
    case equal      = "="
    case clear      = "AC"
    case decimal    = "."
    case present    = "%"
    case negative   = "IMGplus.forwardslash.minus"
    case undo       = "IMGarrow.counterclockwise"
}


let enumOperators: Array<CalcButton> = [
    .add, .subtract, .multiply, .divide
]


let addSymbol: String = CalcButton.add.rawValue
let subtractSymbol: String = CalcButton.subtract.rawValue
let multiplySymbol: String = CalcButton.multiply.rawValue
let divideSymbol: String = CalcButton.divide.rawValue

let operators: String = "\(addSymbol)\(subtractSymbol)\(multiplySymbol)\(divideSymbol)"
