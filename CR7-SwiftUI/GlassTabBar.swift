//
//  GlassTabBar.swift
//  CR7-SwiftUI
//
//  Created by Swantan Barua on 03/06/26.
//

import SwiftUI

struct GlassTabBar: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: "house")
                .font(.system(size: 20))
            Spacer()
            
            Image(systemName: "trophy")
                .font(.system(size: 20))
            Spacer()
            
            Image(systemName: "hand.draw.fill")
                .font(.system(size: 20))
            Spacer()
            
            Image(systemName: "hand.draw")
                .font(.system(size: 20))
            Spacer()
            
            Image(systemName: "checkmark")
                .font(.system(size: 20))
            Spacer()
                  
        }
        .padding(20)
        .background(.ultraThinMaterial)
        .clipShape(Capsule())
        .overlay {
            Capsule()
                .stroke(
                    .white.opacity(0.2),
                    lineWidth: 1
                )
        }
        .shadow(
            color: .black.opacity(0.1),
            radius: 4,
            y: 2
        )
        .frame(height: 70)
        .padding(20)
    }
}

#Preview {
    GlassTabBar()
}
