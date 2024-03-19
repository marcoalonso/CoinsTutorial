//
//  HomeView.swift
//  CoinsTutorial
//
//  Created by Marco Alonso on 18/03/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
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
