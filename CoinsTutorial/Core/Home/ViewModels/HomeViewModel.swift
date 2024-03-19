//
//  HomeViewModel.swift
//  CoinsTutorial
//
//  Created by Marco Alonso on 19/03/24.
//

import SwiftUI

enum CurrencyType: String {
    case usd = "usd"
    case mxn = "mxn"
}

class HomeViewModel: ObservableObject {
    @Published var coins = [Coin]()
    @Published var topMovingCoins = [Coin]()
    @Published var selectedCurrency: CurrencyType = .usd
    
    let service: CoinService
    
    init(service: CoinService) {
        self.service = service
        fetchCoinData(currency: selectedCurrency)
    }
    
    func fetchCoinData(currency: CurrencyType) {
        service.fetchCoinData(currency: selectedCurrency) { result in
            switch result {
            case .success(let coins):
                DispatchQueue.main.async {
                    self.coins = coins
                    // self.configureTopMovingCoins()
                }
            case .failure(let error):
                print("Debug: error \(error)")
            }
        }
        
    }
    
    func configureTopMovingCoins() {
        let topMovers = coins.sorted(by: { $0.priceChangePercentage24H > $1.priceChangePercentage24H })
        self.topMovingCoins = Array(topMovers.prefix(5))
    }
}
