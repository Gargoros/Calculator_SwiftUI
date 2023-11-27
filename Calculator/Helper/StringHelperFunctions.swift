//
//  StringHelperFunctions.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 25.11.23.
//

import Foundation

///
///Return last character
///Otherwise return empty string
func getLastCharacter(string: String) -> String {
    return string.isEmpty ? "" : String(string.last ?? " ")
}
///
///Return true if the last char of the string  is equal  to char
///Otherwise return false
func lastCharacterEqualTo(string: String, character: String) -> Bool{
    let last: String = getLastCharacter(string: string)
    return last == character
}
///
///Return formatted number to the string type
///Otherwise return 0
func formatResult(value: Double) -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal
    numberFormatter.maximumFractionDigits = 16
    let result = numberFormatter.string(from: NSNumber(value: value))
    return result ?? "0"
}
///
///Return true if the last char of the string  is equal  to digit
///Otherwise return false
func lastCharIsDigit(string: String) -> Bool{
    return "0123456789".contains(getLastCharacter(string: string))
}
func lastCharIsDigitOrPercent(string: String) -> Bool{
    return "0123456789%".contains(getLastCharacter(string: string))
}
func lastCharacterIsAnOperator(string: String) -> Bool{
    let lastChar = getLastCharacter(string: string)
    return operators.contains(lastChar)
}

