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

extension Double {
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func toCurrency () -> String {
        return currencyFormatter.string(for: self) ?? "$0.00"
    }
}
