//
//  AllCoinsView.swift
//  CoinsTutorial
//
//  Created by Marco Alonso on 19/03/24.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack {
                Text("Coin")
                
                Spacer()
                
                Text("Price")
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach(0 ..< 50, id: \.self) { _ in
                    CoinRowView()
                    }
                }
            }
        }
    }
}

#Preview {
    AllCoinsView()
}
