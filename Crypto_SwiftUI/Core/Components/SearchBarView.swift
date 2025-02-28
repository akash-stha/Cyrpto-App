//
//  SearchBarView.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-02-28.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(
                    searchText.isEmpty ?
                    Color.colorTheme.secondaryTextColor : Color.colorTheme.accent
                
                )
            TextField("Search by name or symbol", text: $searchText)
                .foregroundStyle(Color.colorTheme.accent)
                .autocorrectionDisabled()
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding(.trailing)
                        .offset(x: 20)
                        .foregroundStyle(Color.colorTheme.accent)
                        .opacity(searchText.isEmpty ? 0 : 1)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchText = ""
                        },
                    alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.colorTheme.bgColor)
                .shadow(color: Color.colorTheme.accent.opacity(0.1), radius: 10)
        )
        .padding()
    }
}

struct SearchBarPreview: PreviewProvider {
    static var previews: some View {
        Group {
            SearchBarView(searchText: .constant(""))
                .previewLayout(.sizeThatFits)
            
            SearchBarView(searchText: .constant(""))
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
