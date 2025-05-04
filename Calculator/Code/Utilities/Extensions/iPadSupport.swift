//
//  iPadSupport.swift
//  Calculator
//
//  Created by MIKHAIL ZHACHKO on 27.11.23.
//

import SwiftUI

extension UIDevice{
    
    static var isIPad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
    
    static var isIPhone: Bool {
        UIDevice.current.userInterfaceIdiom == .phone
    }
}
