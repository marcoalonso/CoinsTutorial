//
//  HomeViewModel.swift
//  CoinsTutorial
//
//  Created by Marco Alonso on 19/03/24.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    init() {
        fetchCoinData()
    }
    
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=24h&locale=en"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Debug: error getting info \(error.localizedDescription)")
            }
            
            if let response = response as? HTTPURLResponse {
                print("Debug: response code: \(response.statusCode)")
            }
            
            guard let data = data else { return }
            
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                print("Debug: coins \(coins)")
            } catch {
                print("Debug: error \(error.localizedDescription)")
            }
            
        }.resume()
    }
}
