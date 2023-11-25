//
//  LightDartModeButtonView.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 24.11.23.
//

import SwiftUI

struct LightDartModeButtonView: View {
    
    @Binding var lightMode: Bool
    let buttonWidthSize1: CGFloat = 55
    let buttonWidthSize2: CGFloat = 50
    let buttonHeightSize1: CGFloat = 55
    let buttonHeightSize2: CGFloat = 50
    
    let symbolSize: CGFloat = 20.0
    
    let color1: Color = topRowButtonColor1
    let color2: Color = topRowButtonColor2
    
    var buttonSymbol: String {
        return lightMode ? "lightbulb" : "lightbulb.fill"
    }
    
    
    
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
            
            Image(systemName: buttonSymbol)
                .font(.system(size: symbolSize))
                .foregroundStyle(buttonTextColor)
                .multilineTextAlignment(.center)
            
        }
        .onTapGesture {
            withAnimation(){
                lightMode.toggle()
            }
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
        LightDartModeButtonView(lightMode: .constant(false))
    }
}
