//
//  CoinIconView.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-04-12.
//

import SwiftUI

struct CoinIconView: View {
    let coin: CoinModel
    
    var body: some View {
        VStack {
            CoinImageView(coinModel: coin)
                .frame(width: 35, height: 35)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundStyle(Color.colorTheme.accent)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            Text(coin.name)
                .font(.caption)
                .foregroundStyle(Color.colorTheme.secondaryTextColor)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
        }
    }
}

struct coinIconView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoinIconView(coin: dev.coin)
                .previewLayout(.sizeThatFits)

            CoinIconView(coin: dev.coin)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
