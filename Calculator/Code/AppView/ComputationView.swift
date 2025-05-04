
import SwiftUI

struct ComputationView: View {
    
    let currentComputation: String
    let mainResult: String
    
    var currenSize: CGFloat { UIDevice.isIPad ? currentTextIPadSize : currentTextSize }
    var mainTextSize: CGFloat { UIDevice.isIPad ? mainResultTextIPadSize : mainResultTextSize }
    var resultText: String { mainResult.isEmpty ? "" : " = \(mainResult)" }
    
    var body: some View {
        VStack(alignment: .trailing){
            Text(currentComputation)
                .font(.system(size: currenSize))
                .foregroundStyle(expressionsTextColor)
                .fontWeight(.semibold)
            Text(resultText)
                .font(.system(size: mainTextSize))
                .foregroundStyle(resultTextColor)
                .fontWeight(.bold)
        }
        .lineLimit(1)
        .multilineTextAlignment(.trailing)
        .minimumScaleFactor(0.1)
        .padding()
    }
}
