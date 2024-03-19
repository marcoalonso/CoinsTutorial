//
//  Double+Extension.swift
//  CoinsTutorial
//
//  Created by Marco Alonso on 19/03/24.
//

import Foundation

extension Double {
    func formattedString() -> String {
        return String(format: "%.2f", self)
    }
    
    func withoutDecimal() -> String {
        return String(format: "%.0f", self)
    }

}
