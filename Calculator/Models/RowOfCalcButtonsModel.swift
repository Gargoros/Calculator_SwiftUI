//
//  RowOfCalcButtonsModel.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 25.11.23.
//

import Foundation

struct RowOfCalcButtonsModel: Identifiable {
    let id: UUID = UUID()
    let row: Array<CalcButtonModel>
}
