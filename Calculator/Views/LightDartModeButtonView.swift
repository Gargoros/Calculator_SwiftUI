//
//  LightDartModeButtonView.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 24.11.23.
//

import SwiftUI

struct LightDartModeButtonView: View {
    
    @Binding var lightMode: Bool
    
    let color1: Color = topRowButtonColor1
    let color2: Color = topRowButtonColor2
    
    var buttonSymbol: String {
        return lightMode ? "lightbulb" : "lightbulb.fill"
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
              .clipShape(RoundedRectangle(cornerRadius: 18))
              .shadow(color: shadowColor, radius: 4, x: 0, y: 3)
            Rectangle()
                .fill(
                    LinearGradient(
                        colors: [color1, color2],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
                .frame(width: buttonSize2, height: buttonSize2)
                .clipShape(RoundedRectangle(cornerRadius: 18))
                .padding()
            
            Image(systemName: buttonSymbol)
                .font(.system(size: symbolsSize))
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
