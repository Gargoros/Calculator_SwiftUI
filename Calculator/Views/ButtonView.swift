//
//  TestView.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 24.11.23.
//

import SwiftUI

struct ButtonView: View {
    
    let buttonWidthSize1: CGFloat
    let buttonWidthSize2: CGFloat
    let buttonHeightSize1: CGFloat
    let buttonHeightSize2: CGFloat
    
    let symbolSize: CGFloat
    
    let color1: Color
    let color2: Color
    
    let buttonSymbol: String
    
    
    
    var body: some View {
        ZStack {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: buttonWidthSize1, height: buttonHeightSize1)
              .background(
                LinearGradient(
                    colors: [color2, color1],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
              )
              .clipShape(RoundedRectangle(cornerRadius: 23))
            Rectangle()
                .fill(
                    LinearGradient(
                        colors: [color1, color2],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
                .frame(width: buttonWidthSize2, height: buttonHeightSize2)
                .clipShape(RoundedRectangle(cornerRadius: 23))
                .padding()
            
            Text(buttonSymbol)
                .font(.system(size: symbolSize))
                .foregroundStyle(buttonTextColor)
                .multilineTextAlignment(.center)
            
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
        
        ButtonView(
            buttonWidthSize1: 77,
            buttonWidthSize2: 70,
            buttonHeightSize1: 77,
            buttonHeightSize2: 70,
            symbolSize: 40,
            color1: topRowButtonColor1,
            color2: topRowButtonColor2,
            buttonSymbol: "-"
        )
            .padding()
    }
}
