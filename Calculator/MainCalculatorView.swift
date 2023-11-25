//
//  ContentView.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 23.11.23.
//

import SwiftUI

struct MainCalculatorView: View {
    
    @State var lightMode: Bool = true
    @State var currentComputation: String = ""
    @State var mainResult: String = "0"
    
    var colorScheme: ColorScheme {
        return lightMode ? .light : .dark
    }
    
    var body: some View {
        ZStack {
            BackgroundColorView()
            VStack{
                HStack() {
                    LightDartModeButtonView(lightMode: $lightMode)
                    Spacer()
                }
                HStack {
                    Spacer()
                    ComputationView(
                        currentComputation: currentComputation,
                        mainResult: mainResult
                    )
                }
                CalcButtonsView(
                    currentComputation: $currentComputation,
                    mainResult: $mainResult)
                Spacer()
            }
        }
        .environment(\.colorScheme, colorScheme)
    }
}

#Preview {
    MainCalculatorView()
}
