//
//  SwiftUIView.swift
//  StockTracking
//
//  Created by Batuhan Gözegü on 17.08.2025.
//

import SwiftUI

struct OnbSlide: View {
    
    let title: String
    let subtitle: String
    let emoji: String
    let color1: Color
    let color2: Color
    
    
    var body: some View {
        VStack(spacing:16){
            Spacer()
        
            Image(systemName: emoji)
                .font(.system(size: 56,weight: .semibold))
                .foregroundStyle(.white)
                .padding(28)
                .background(LinearGradient(colors: [color1, color2],
                                           startPoint: .topLeading, endPoint: .bottomTrailing)
                ).clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
                .shadow(radius: 10, y: 6)
        
            Text(title)
                .font(.title.bold())
                .multilineTextAlignment(.center)
                .padding(12)
            
            Text(subtitle)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal,16)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    OnbSlide(title: "sad", subtitle: "dat", emoji: "chart.xyaxis.line", color1: .indigo, color2: .purple)
}
