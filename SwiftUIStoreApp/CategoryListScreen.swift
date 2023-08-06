//
//  CategoryListScreen.swift
//  SwiftUIStoreApp
//
//  Created by ipeerless on 05/08/2023.
//

import SwiftUI

struct CategoryListScreen: View {
    @EnvironmentObject private var storeModel: StoreModel
    @State private var errorMessage = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                List(storeModel.categories, id: \.self) { category in
                    NavigationLink(value: category) {
                        HStack {
                            AsyncImage(url: category.image) { image in
                                image.resizable()
                                    .frame(maxWidth: 100, maxHeight: 100)
                                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                            } placeholder: {
                                ProgressView()
                            }
                            
                            
                            Text(category.name)
                        }
                    }.navigationDestination(for: Category.self) { category in
                        ProductListScreen(category: category)
                    }
              
                }.task {
                    do {
                        try  await   storeModel.fetchCategories()
                    } catch {
                        errorMessage = error.localizedDescription
                    }
                    
                }
                Text(errorMessage)
            }.navigationTitle("Store")
        }
    }
}

struct CtegoryListScreen_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListScreen().environmentObject(StoreModel())
    }
}
