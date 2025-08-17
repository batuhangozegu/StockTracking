//
//  ButtonView.swift
//  StockTracking
//
//  Created by Batuhan Gözegü on 17.08.2025.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical,14)
        .background(.blue)
        .foregroundStyle(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .padding([.horizontal, .bottom])
        .shadow(radius: 8, y: 4)
    }
}

#Preview {
    ButtonView(title: "deneme") {
        print("deneme")
    }
}
