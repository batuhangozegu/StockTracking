//
//  SwiftUIView.swift
//  StockTracking
//
//  Created by Batuhan Gözegü on 17.08.2025.
//

import SwiftUI

struct RootView: View {
    
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding: Bool = false
    
    
    var body: some View {
        if hasSeenOnboarding {
            ContentView()
        }else{
            OnboardingView()
        }
    }
}

#Preview {
    RootView()
}
