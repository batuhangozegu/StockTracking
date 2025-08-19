//
//  OrView.swift
//  StockTracking
//
//  Created by Batuhan Gözegü on 19.08.2025.
//

import SwiftUI

struct OrView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 12){
            Rectangle()
                .fill(.separator)
                .frame(height: 2)
            
            Text("OR")
                .font(.system(size: 20,weight: .semibold))
                .foregroundStyle(.secondary)
            
            Rectangle()
                .fill(.separator)
                .frame(height: 2)
            
        }
    }
}

#Preview {
    OrView()
}
