
import SwiftUI

struct CalcButtonModel: Identifiable {
    let id: UUID                = UUID()
    let calcButton: CalcButton
    var buttonColor1: Color     = numberButtonColor1
    var buttonColor2: Color     = numberButtonColor2
    var textButtonColor: Color  = buttonTextColor
    var symbolSize: CGFloat     = symbolsSize
}
