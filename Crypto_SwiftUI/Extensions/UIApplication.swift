//
//  UIApplication.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-02-28.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
