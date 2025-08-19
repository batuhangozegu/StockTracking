//
//  OnboardingView().swift
//  StockTracking
//
//  Created by Batuhan Gözegü on 17.08.2025.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    @State private var page = 0
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Button("Skip"){ hasSeenOnboarding = true}
                    .font(.system(size: 22))
                    .fontWeight(.semibold)
                    .foregroundStyle(.blue)
            }
            .padding()
            
            TabView(selection: $page){
                OnbSlide(
                    title: "Track Your Investment",
                    subtitle: "Stay Update with real-time stock prices and market trends",
                    emoji: "chart.xyaxis.line",
                    color1: .blue,
                    color2: .indigo
                ).tag(0)
                
                OnbSlide(
                    title: "Build Watchlists",
                    subtitle: "Favorite stocks to monitor quickly in one place",
                    emoji: "star.fill",
                    color1: .green.opacity(0.8),
                    color2: .green
                ).tag(1)
                
                OnbSlide(
                    title: "No Trading",
                    subtitle: "Monitoring only - clean, simple, safe",
                    emoji: "eyes.inverse",
                    color1: .red.opacity(0.7),
                    color2: .red
                ).tag(2)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            PageIndicator(numberOfPages: 3, currentPage: page)
                .padding(.bottom,16)
            
            ButtonView(title: page == 2 ? "Get Started" : "Continue", action: {
                if page < 2 { page += 1 }
                else {hasSeenOnboarding = true}
            }, color: Color.blue)
            .padding(.horizontal)
            
        }
        .background(
            LinearGradient(colors: [Color.white,Color(.systemGray6)],
                           startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
        )
        
    }
}

#Preview {
    OnboardingView()
}
