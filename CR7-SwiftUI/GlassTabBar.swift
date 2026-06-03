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
        Capsule()
            .fill(.ultraThinMaterial)
            .overlay {
                Capsule()
                    .stroke(
                        .white.opacity(0.3),
                        lineWidth: 1
                    )
            }
            .frame(height: 70)
            .padding(20)
    }
}

#Preview {
    GlassTabBar()
}
