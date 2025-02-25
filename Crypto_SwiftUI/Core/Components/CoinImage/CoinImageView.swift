//
//  CoinImageView.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-02-24.
//

import SwiftUI

struct CoinImageView: View {
    
    @StateObject var viewModel: CoinImageViewModel
    
    init(coinModel: CoinModel) {
        _viewModel = StateObject(wrappedValue: CoinImageViewModel(coin: coinModel))
    }
    
    var body: some View {
        ZStack {
            if let image = viewModel.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if viewModel.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundStyle(Color.colorTheme.secondaryTextColor)
            }
        }
    }
}

struct CoinImageViewPreviews: PreviewProvider {
    static var previews: some View {
        CoinImageView(coinModel: dev.coin)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
