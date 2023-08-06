//
//   Locale+Extensions.swift
//  SwiftUIStoreApp
//
//  Created by ipeerless on 06/08/2023.
//
//

import Foundation

extension Locale {
    
    static var currencyCode: String {
        Locale.current.currency?.identifier ?? "USD"
    }
    
}
