//
//  HomeView.swift
//  CoinsTutorial
//
//  Created by Marco Alonso on 18/03/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // top movers view
                TopMoversView()
                
                // all coins view
            }
            .navigationTitle("Coins Prices")
        }
    }
}

#Preview {
    HomeView()
}
