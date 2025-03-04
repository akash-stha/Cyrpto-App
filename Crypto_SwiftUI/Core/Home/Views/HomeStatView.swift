//
//  HomeStatView.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-03-03.
//

import SwiftUI

struct HomeStatView: View {
    
    @EnvironmentObject private var viewModel: HomeViewModel
    @Binding var showPortfolio: Bool
    
    var body: some View {
        HStack {
            ForEach(viewModel.statistics) { stat in
                StatisticView(stat: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
            }
        }
        .frame(
            width: UIScreen.main.bounds.width,
            alignment: showPortfolio ? .trailing : .leading
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStatView(showPortfolio: .constant(false))
            .environmentObject(dev.homeViewModel)
    }
}
