//
//  CurrencyPickerView.swift
//  CoinsTutorial
//
//  Created by Marco Alonso on 19/03/24.
//

import SwiftUI

struct CurrencyPickerView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack {
            Picker("Currency", selection: $viewModel.selectedCurrency) {
                Text("USD").tag(CurrencyType.usd)
                Text("MXN").tag(CurrencyType.mxn)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
        }
    }
}

#Preview {
    CurrencyPickerView(viewModel: HomeViewModel(service: CoinService()))
}
