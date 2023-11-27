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
    var isIPadSize1: CGFloat {
        return UIDevice.isIPad ? buttonSize1 / 2 : buttonSize1
    }
    var isIPadSize2: CGFloat {
        return UIDevice.isIPad ? buttonSize2 / 2 : buttonSize2
    }
    
    
    
    var body: some View {
        ZStack {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: isIPadSize1, height: isIPadSize1)
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
                .frame(width: isIPadSize2, height: isIPadSize2)
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
