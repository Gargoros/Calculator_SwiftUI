//
//  TestView.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 24.11.23.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        ZStack {
            Color(red: 0.87, green: 0.88, blue: 0.92)
                .ignoresSafeArea()
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 77, height: 77)
              .background(Color(red: 0.82, green: 0.83, blue: 0.89))
              .cornerRadius(23)
          .shadow(color: Color(red: 0.22, green: 0.24, blue: 0.32).opacity(0.24), radius: 5, x: 3, y: 3)
        }
    }
}

#Preview {
    TestView()
}
