//
//  XMarkButton.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-04-11.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.subheadline)
                .padding(8)
                .background(RoundedRectangle(cornerRadius: 8)
                    .fill(.white)
                )
                .padding(.top, 12)
                .shadow(color: .black.opacity(0.2), radius: 4)
        })
    }
}

#Preview {
    XMarkButton()
}
