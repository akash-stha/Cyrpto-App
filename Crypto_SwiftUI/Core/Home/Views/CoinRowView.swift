//
//  CoinRowView.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-02-22.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    let showHoldingsColumn: Bool
    
    var body: some View {
        HStack(spacing: 0) {
            leftColumn
            Spacer()
            if showHoldingsColumn {
                centerColumn
            }
            rightColumn
        }
        .font(.subheadline)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoinRowView(coin: DeveloperPreview.instance.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)

            CoinRowView(coin: DeveloperPreview.instance.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}

extension CoinRowView {
    
    private var leftColumn: some View {
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundStyle(Color.colorTheme.accent)
                .frame(minWidth: 30)
            
            Circle()
                .frame(width: 30, height: 30)
            
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundStyle(Color.colorTheme.accent)
        }
    }
    
    private var centerColumn: some View {
        
        VStack(alignment: .trailing) {
            Text(coin.currentHoldingsValue.asCurrencyWith2Decimals())
                .bold()
                .foregroundStyle(Color.colorTheme.accent)
            Text(coin.currentHoldings?.asNumberString() ?? "0.0")
        }
        .foregroundStyle(Color.colorTheme.accent)
        
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentPrice.asCurrencyWith6Decimals())
                .bold()
                .foregroundStyle(Color.colorTheme.accent)
            
            HStack(spacing: 2) {
                Image(systemName: (coin.priceChangePercentage24H ?? 0) >= 0 ? "arrowtriangle.up.fill" : "arrowtriangle.down.fill")
                    .foregroundStyle(
                        (coin.priceChangePercentage24H ?? 0) >= 0 ? Color.colorTheme.greenColor : Color.colorTheme.redColor
                    )
                    .font(.subheadline)
                
                Text(coin.priceChangePercentage24H?.asPercentageString() ?? "0.00%")
                    .foregroundStyle(
                        (coin.priceChangePercentage24H ?? 0) >= 0 ? Color.colorTheme.greenColor : Color.colorTheme.redColor
                    )
            }
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
    
}
