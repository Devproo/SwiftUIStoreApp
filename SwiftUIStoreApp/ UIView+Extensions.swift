//
//   UIView+Extensions.swift
//  SwiftUIStoreApp
//
//  Created by ipeerless on 07/08/2023.
//

//


import Foundation
import SwiftUI

extension View {
    
    func borderedCaption(backgroundColor: Color = .green, foregroundColor: Color = .white) -> some View {
        modifier(BorderedCaption(backgroundColor: backgroundColor, foregroundColor: foregroundColor))
    }
    
}
