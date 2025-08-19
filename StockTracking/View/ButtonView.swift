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
    let image: String?
    let color: Color
    let hasBorder: Bool
    let hasShadow: Bool
    let corner: CGFloat
    
    init(title: String,
         action: @escaping () -> Void,
         image: String? = nil,
         color: Color,
         hasBorder: Bool = false,
         hasShadow: Bool = true,
         corner: CGFloat = 10) {
        self.title = title
        self.action = action
        self.image = image
        self.color = color
        self.hasBorder = hasBorder
        self.hasShadow = hasShadow
        self.corner = corner
    }
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                if let image {
                    Image(image)
                }
                Text(title)
                    .font(.system(size: 18))
                    .foregroundStyle(image == nil ? .white : .black)
            }
            .frame(maxWidth: .infinity)
            .padding()
        }
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: corner, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: corner, style: .continuous)
                .stroke(.gray.opacity(hasBorder ? 0.5 : 0), lineWidth: hasBorder ? 1 : 0)
        )
        .shadow(
            color: .black.opacity(hasShadow ? 0.2 : 0),
            radius: hasShadow ? 8 : 0,
            x: 0, y: hasShadow ? 4 : 0
        )
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ButtonView(title: "deneme", action: {
        print("deneme")
    }, color: Color.blue, hasBorder: true)
}
