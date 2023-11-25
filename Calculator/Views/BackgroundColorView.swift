//
//  BackgroundColorView.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 24.11.23.
//

import SwiftUI

struct BackgroundColorView: View {
    var body: some View {
        LinearGradient(
            colors: [backGroundColor1, backGroundColor2],
            startPoint: .top,
            endPoint: .bottom)
        .ignoresSafeArea()
        
    }
}

#Preview {
    BackgroundColorView()
}
