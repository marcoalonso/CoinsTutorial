//
//  HomeView.swift
//  CoinsTutorial
//
//  Created by Marco Alonso on 18/03/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel(service: CoinService())
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                CurrencyPickerView(viewModel: viewModel)
                    .onChange(of: viewModel.selectedCurrency) { oldValue, newValue in
                        print("Debug: newValue \(newValue)")
                        viewModel.fetchCoinData(currency: viewModel.selectedCurrency)
                    }
                
                // top movers view
                TopMoversView(viewModel: viewModel)
                
                
                Divider()
                
                // all coins view
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Coins Prices")
        }
    }
}

#Preview {
    HomeView()
}
