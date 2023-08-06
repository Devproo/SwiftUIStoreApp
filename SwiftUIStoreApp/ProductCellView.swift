//
//  ProductCellView.swift
//  SwiftUIStoreApp
//
//  Created by ipeerless on 06/08/2023.
//

//


import SwiftUI

struct ProductCellView: View {
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .firstTextBaseline) {
                Text(product.title)
                    .bold()
                Spacer()
                
                Text(product.price, format: .currency(code: Locale.currencyCode))
                   
                    
            }
            Text(product.description)
        }
    }
}

struct ProductCellView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCellView(product: Product.preview)
    }
}
