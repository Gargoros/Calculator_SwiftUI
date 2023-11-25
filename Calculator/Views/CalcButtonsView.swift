//
//  CalcTopButtonsView.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 24.11.23.
//

import SwiftUI

struct CalcButtonsView: View {
    @Binding var currentComputation: String
    @Binding var mainResult: String
    
    let mathsSymbols: Array<String> = [
        "plus.forwardslash.minus", "percent", "divide",
        "multiply", "minus", "plus", "equal", "arrow.counterclockwise"
    ]
    let numbersSymbols: Array<String> = [
        "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", ".", "C"]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ZStack {
        LinearGradient(
            colors: [backGroundColor1, backGroundColor2],
            startPoint: .top,
            endPoint: .bottom)
            .ignoresSafeArea()
        CalcButtonsView(
            currentComputation: .constant("19,34 + 11,23"),
            mainResult: .constant("30,75"))
    }
}
