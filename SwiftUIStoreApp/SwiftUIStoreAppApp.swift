//
//  SwiftUIStoreAppApp.swift
//  SwiftUIStoreApp
//
//  Created by ipeerless on 05/08/2023.
//

import SwiftUI

@main
struct SwiftUIStoreAppApp: App {
    
    @StateObject private var storeModel = StoreModel()
       
       var body: some Scene {
           WindowGroup {
               CategoryListScreen().environmentObject(storeModel)
           }
       }
   }
