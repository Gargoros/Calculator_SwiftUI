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

    var body: some View {
        Grid(horizontalSpacing: -10, verticalSpacing: -10){
            ForEach(buttonsData){ rowOfCalcButtonsModel in
                GridRow{
                    ForEach(rowOfCalcButtonsModel.row) {calcButtonModel in
                        Button(
                            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                            label: {
                            ButtonView(
                                buttonSize1: buttonSize1,
                                buttonSize2: buttonSize2,
                                symbolSize: symbolsSize,
                                color1: calcButtonModel.buttonColor1,
                                color2: calcButtonModel.buttonColor2,
                                buttonSymbol: calcButtonModel.calcButton)
                        })
                    }
                }
                
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
        CalcButtonsView(
            currentComputation: .constant("19,34 + 11,23"),
            mainResult: .constant("30,75"))
    }
}
