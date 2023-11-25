//
//  TestView.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 24.11.23.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        ZStack {
            Rectangle()
              .foregroundColor(.clear)
//              .frame(width: 77, height: 77)
              .background(
                LinearGradient(
                    colors: [topRowButtonColor2, topRowButtonColor1],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
              )
              .cornerRadius(23)
              
            
            
            Rectangle()
                .fill(
                    LinearGradient(
                        colors: [topRowButtonColor1, topRowButtonColor2],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
//                .frame(width: 70, height: 70)
                .cornerRadius(23)
                .padding()
            
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
        ButtonView()
            .padding()
    }
}
