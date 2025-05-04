
import SwiftUI

struct CalcButtonsView: View {
    @Binding var currentComputation: String
    @Binding var mainResult: String
    
    var body: some View {
        Grid(horizontalSpacing: -10, verticalSpacing: -20){
            ForEach(buttonsData){ rowOfCalcButtonsModel in
                GridRow{
                    ForEach(rowOfCalcButtonsModel.row) {calcButtonModel in
                        Button(
                            action: {
                                buttonPressed(calcButton: calcButtonModel.calcButton)
                            },
                            label: {
                                ButtonView(
                                    buttonSize1: buttonSize1,
                                    buttonSize2: buttonSize2,
                                    symbolSize: symbolsSize,
                                    color1: calcButtonModel.buttonColor1,
                                    color2: calcButtonModel.buttonColor2,
                                    buttonSymbol: calcButtonModel.calcButton)
                            })
                    }
                }
            }
        }
    }
    
    func buttonPressed(calcButton: CalcButton){
        switch calcButton {
            case .clear:
                currentComputation = ""
                mainResult = "0"
            case .add, .subtract, .multiply, .divide:
                if lastCharIsDigitOrPercent(string: currentComputation){ appendToCurrentComputation(calcButton: calcButton) }
            case .equal, .negative:
                if !currentComputation.isEmpty {
                    if !lastCharacterIsAnOperator(string: currentComputation){
                        let sign = calcButton == .negative ? -1.0 : 1.0
                        mainResult = formatResult(value: sign * calculateResults())
                        currentComputation = ""
                        if calcButton == .negative { currentComputation = mainResult }
                    }
                }
            case .decimal:
                if let lastOccurrenceOfDecimal = currentComputation.lastIndex(of: ".") {
                    if lastCharIsDigit(string: currentComputation) {
                        let startIndex = currentComputation.index(lastOccurrenceOfDecimal, offsetBy: 1)
                        let endIndex = currentComputation.endIndex
                        let range = startIndex..<endIndex
                        let rightSubString = String(currentComputation[range])
                        if Int(rightSubString) == nil && !rightSubString.isEmpty { currentComputation += "." }
                    }
                } else {
                    if currentComputation.isEmpty { currentComputation += "0." }
                    else if lastCharIsDigit(string: currentComputation) { currentComputation += "." }
                }
                
            case .present:
                if lastCharIsDigit(string: currentComputation){ appendToCurrentComputation(calcButton: calcButton) }
            case .undo: currentComputation = String(currentComputation.dropLast())
            default:
                appendToCurrentComputation(calcButton: calcButton)
                let sign = calcButton == .negative ? -1.0 : 1.0
                mainResult = formatResult(value: sign * calculateResults())
        }
    }
    
    func appendToCurrentComputation(calcButton: CalcButton){
        return currentComputation += calcButton.rawValue
    }

    func calculateResults() -> Double {
        let visible = currentComputation
        var workings = visible
            .replacingOccurrences(of: "%", with: "*0.01")
            .replacingOccurrences(of: multiplySymbol, with: "*")
            .replacingOccurrences(of: divideSymbol, with: "/")


        if visible.last == "." { workings += "0" }
        let intRegex = #"(?<=^|[+\-*/%])(\d+)(?=$|[+\-*/%])"#
        workings = workings.replacingOccurrences( of: intRegex, with: "$1.0", options: .regularExpression )
        let expr = NSExpression(format: workings)
        guard let result = expr.expressionValue(with: nil, context: nil) as? NSNumber else { return 0 }
        return result.doubleValue
    }
}
