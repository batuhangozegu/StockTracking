//
//  BottomBar.swift
//  StockTracking
//
//  Created by Batuhan Gözegü on 20.08.2025.
//

import SwiftUI
import UIKit

struct BottomBar: View {
    
    init(){
       let ap = UITabBarAppearance()
        ap.configureWithOpaqueBackground()
        ap.backgroundEffect = UIBlurEffect(style: .systemChromeMaterial)
        ap.backgroundColor = .white
        ap.shadowColor = UIColor(.black.opacity(0.25))
        UITabBar.appearance().standardAppearance = ap
        if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = ap
            }
    }
    
    
    var body: some View {
        TabView{
                
            Tab("Home", systemImage: "house") {
                            HomePage()
                        }
            Tab("Search", systemImage: "magnifyingglass") {
                            SearchView()
                        }
            Tab("Favorites", systemImage: "star") {
                            FavoritesView()
                        }
            Tab("Profile", systemImage: "person") {
                            ProfileView()
                        }
        }
        
    }
        
}

#Preview {
    BottomBar()
}
