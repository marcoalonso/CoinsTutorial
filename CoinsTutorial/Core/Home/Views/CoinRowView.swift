//
//  CoinRowView.swift
//  CoinsTutorial
//
//  Created by Marco Alonso on 19/03/24.
//

import SwiftUI

struct CoinRowView: View {
    let coin: Coin
    
    var body: some View {
        HStack {
            // market cap rank
            if let marketCap = coin.marketCapRank {
                Text(marketCap.withoutDecimal())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            
            //image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            // coin name info
            VStack(alignment: .leading) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            // coin price info
            VStack(alignment: .trailing) {
                Text("$\(coin.currentPrice.formattedString())")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("\(coin.priceChangePercentage24H.formattedString() )")
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundColor(.green)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}
