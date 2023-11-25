//
//  TestView.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 24.11.23.
//

import SwiftUI

struct ButtonView: View {
    
    let buttonSize1: CGFloat
    let buttonSize2: CGFloat
    
    let symbolSize: CGFloat
    
    let color1: Color
    let color2: Color
    
    let buttonSymbol: CalcButton
    
    var systemImage: String? {
        let value: String = buttonSymbol.rawValue
        return value.contains("IMG") ? value.replacingOccurrences(
            of: "IMG",
            with: "") : nil
    }
    var text: String? {
        let value: String = buttonSymbol.rawValue
        return value.contains("IMG") ? nil : value
    }
    
    
    
    var body: some View {
        ZStack {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: buttonSize1, height: buttonSize1)
              .background(
                LinearGradient(
                    colors: [color2, color1],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
              )
              .clipShape(RoundedRectangle(cornerRadius: 23))
              .shadow(color: shadowColor, radius: 6, x: 0, y: 3)
            Rectangle()
                .fill(
                    LinearGradient(
                        colors: [color1, color2],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
                .frame(width: buttonSize2, height: buttonSize2)
                .clipShape(RoundedRectangle(cornerRadius: 23))
                .padding()
            
            Text(text ?? "")
                .font(.system(size: symbolSize))
                .foregroundStyle(buttonTextColor)
                .multilineTextAlignment(.center)
            Image(systemName: systemImage ?? "")
                .resizable()
                .frame(width: symbolSize, height: symbolSize)
                .foregroundStyle(buttonTextColor)
            
        }
    }
}

#Preview {
    ZStack {
        LinearGradient(
            colors: [backGroundColor1, backGroundColor2],
            startPoint: .top,
            endPoint: .bottom)
            .ignoresSafeArea()
        HStack(spacing: -10){
            ButtonView(
                buttonSize1: buttonSize1,
                buttonSize2: buttonSize2,
                symbolSize: symbolsSize,
                color1: topRowButtonColor1,
                color2: topRowButtonColor2,
                buttonSymbol: CalcButton.add
            )
        }
        .padding()
        
    }
}
