//
//  ComputationView.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 24.11.23.
//

import SwiftUI

struct ComputationView: View {
    
    let currentComputation: String
    let mainResult: String
    
    var currenSize: CGFloat {
        return UIDevice.isIPad ? currentTextIPadSize : currentTextSize
    }
    var mainTextSize: CGFloat {
        return UIDevice.isIPad ? mainResultTextIPadSize : mainResultTextSize
    }
    var resultText: String {
        return mainResult.isEmpty ? "" : " = \(mainResult)"
    }
    
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

#Preview {
    ZStack {
        LinearGradient(
            colors: [backGroundColor1, backGroundColor2],
            startPoint: .top,
            endPoint: .bottom)
            .ignoresSafeArea()
        ComputationView(
            currentComputation: "30,75",
            mainResult: "30,75"
        )
    }
}
