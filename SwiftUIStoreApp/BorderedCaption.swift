//
//  BorderedCaption.swift
//  SwiftUIStoreApp
//
//  Created by ipeerless on 07/08/2023.
//

//


import Foundation
import SwiftUI

struct BorderedCaption: ViewModifier {
    
    private var backgroundColor: Color
    private var foregroundColor: Color
    
    init(backgroundColor: Color = Color.green, foregroundColor: Color = Color.white) {
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
    }
    
    func body(content: Content) -> some View {
        content.padding(5)
            .foregroundColor(foregroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            .background {
                backgroundColor
            }
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
    }
    
}
