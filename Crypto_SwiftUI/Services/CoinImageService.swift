//
//  CoinImageService.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-02-24.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {
    @Published var image: UIImage? = nil
    private var imageSubscription: AnyCancellable?
    private let coinModel: CoinModel
    
    init(coin: CoinModel) {
        self.coinModel = coin
        getCoinImage()
    }
    
    private func getCoinImage() {
        guard let url = URL(string: coinModel.image) else { return }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ data -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedImage in
                self?.image = returnedImage
                self?.imageSubscription?.cancel()
            })
    }
}
