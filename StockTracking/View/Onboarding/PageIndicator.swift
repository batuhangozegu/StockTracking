//
//  PageIndicator.swift
//  StockTracking
//
//  Created by Batuhan Gözegü on 17.08.2025.
//

import SwiftUI

struct PageIndicator: View {
    
    var numberOfPages: Int
    var currentPage: Int
    
    
    var body: some View {
        HStack(spacing:8) {
            ForEach(0..<numberOfPages, id: \.self) { index in
                Circle()
                    .fill(index == currentPage ? Color.blue : Color.gray.opacity(0.4))
                    .frame(width: index == currentPage ? 12 : 8,
                           height: index == currentPage ? 12 : 8)
                    .animation(.easeIn(duration: 0.25),value: currentPage)
            }
        }
    }
}

#Preview {
    PageIndicator(numberOfPages: 3, currentPage: 0)
}
