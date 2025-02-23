//
//  HomeViewModel.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-02-23.
//

import Foundation

class HomeViewModel: ObservableObject {
 
    @Published var allCoins: [CoinModel] = []
    @Published var porfolioCoins: [CoinModel] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.allCoins.append(DeveloperPreview.instance.coin)

            self.porfolioCoins.append(DeveloperPreview.instance.coin)
            self.porfolioCoins.append(DeveloperPreview.instance.coin)
            self.porfolioCoins.append(DeveloperPreview.instance.coin)
            self.porfolioCoins.append(DeveloperPreview.instance.coin)
            self.porfolioCoins.append(DeveloperPreview.instance.coin)
            self.porfolioCoins.append(DeveloperPreview.instance.coin)
            self.porfolioCoins.append(DeveloperPreview.instance.coin)
            self.porfolioCoins.append(DeveloperPreview.instance.coin)
        }
    }
    
}
