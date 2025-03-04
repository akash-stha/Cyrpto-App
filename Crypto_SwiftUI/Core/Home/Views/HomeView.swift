//
//  HomeView.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-02-21.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var viewModel: HomeViewModel
    @State private var showPortfolio: Bool = false
    
    var body: some View {
        ZStack {
            // Background layer
            Color.colorTheme.bgColor
                .ignoresSafeArea()
            
            // Content layer
            VStack {
                headerView
                HomeStatView(showPortfolio: $showPortfolio)
                SearchBarView(searchText: $viewModel.searchText)
                columnTitles
                if !showPortfolio {
                    allCoinsList
                    .transition(.move(edge: .leading))
                } else {
                    portfolioList
                    .transition(.move(edge: .trailing))
                }
                Spacer()
            }
        }
    }
}

//#Preview {
//    NavigationView {
//        HomeView()
//            .navigationBarHidden(true)
//    }
//    .environmentObject(DeveloperPreview.instance.homeViewModel)
//}

struct HomeViewPreviews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
        .environmentObject(dev.homeViewModel)
    }
}

extension HomeView {
    
    private var headerView: some View {
        HStack {
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .background(
                    CircleButtonViewAnimation(animate: $showPortfolio)
                )
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundStyle(Color.colorTheme.accent)
                .animation(.none)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture() {
                    withAnimation(.easeInOut) {
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
    
    private var allCoinsList: some View {
        List {
            ForEach(viewModel.allCoins) { coin in
                CoinRowView(coin: coin, showHoldingsColumn: false)
                    .listRowInsets(.init(top: 12, leading: 0, bottom: 12, trailing: 10))
            }
        }
        .listStyle(PlainListStyle())
    }
    
    private var portfolioList: some View {
        List {
            ForEach(viewModel.allCoins) { coin in
                CoinRowView(coin: coin, showHoldingsColumn: true)
                    .listRowInsets(.init(top: 12, leading: 0, bottom: 12, trailing: 10))
            }
        }
        .listStyle(PlainListStyle())
    }
    
    private var columnTitles: some View {
        HStack {
            Text("Coins")
                .padding(.leading, 30)
            Spacer()
            if showPortfolio {
                Text("Holdings")
            }
            Text("Price")
                .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
        }
        .font(.caption)
        .foregroundStyle(Color.colorTheme.secondaryTextColor)
        .padding(.horizontal, 10)
    }
    
}
