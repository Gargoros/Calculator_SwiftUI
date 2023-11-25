//
//  ComputationView.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 24.11.23.
//

import SwiftUI

struct ComputationView: View {
    
    @State var currentComputation: String
    @State var mainResult: String
    
    let currentTextSize: CGFloat = 28.0
    let mainResultTextSize: CGFloat = 56.0
    
    var body: some View {
        VStack(alignment: .trailing){
            Text(currentComputation)
                .font(.system(size: currentTextSize))
                .foregroundStyle(expressionsTextColor)
                .fontWeight(.semibold)
            Text(" = \(mainResult)")
                .font(.system(size: mainResultTextSize))
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
