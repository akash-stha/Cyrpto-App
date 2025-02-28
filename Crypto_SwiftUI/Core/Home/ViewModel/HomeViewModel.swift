//
//  HomeViewModel.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-02-23.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
 
    @Published var allCoins: [CoinModel] = []
    @Published var porfolioCoins: [CoinModel] = []
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubsribers()
    }
    
    private func addSubsribers() {
        dataService.$allCoins.sink { [weak self] allCoins in
            self?.allCoins = allCoins
        }.store(in: &cancellables)
    }
    
}
