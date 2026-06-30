//
//  GlassTabBar.swift
//  CR7-SwiftUI
//
//  Created by Swantan Barua on 03/06/26.
//

import SwiftUI

struct GlassTabBar: View {
    
    // MARK: - PROPERTIES
    @Binding var selectedTab: Tab
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button {
                selectedTab = .home
            } label: {
                Image(systemName: "house")
                    .font(.system(size: 20))
                    .foregroundStyle(
                        selectedTab == .home ? .primary : .secondary
                    )
                    .padding(12)
                    .background {
                        if selectedTab == .home {
                            Capsule()
                                .fill(.white.opacity(0.2))
                        }
                    }
            }
            Spacer()
            
            Button {
                selectedTab = .goals
            } label: {
                Image(systemName: "list.bullet")
                    .font(.system(size: 20))
                    .foregroundStyle(
                        selectedTab == .goals ? .primary : .secondary
                    )
            }
            Spacer()
            
            Button {
                selectedTab = .opp
            } label: {
                Image(systemName: "hexagon")
                    .font(.system(size: 20))
                    .foregroundStyle(
                        selectedTab == .opp ? .primary : .secondary
                    )
            }
            Spacer()
            
            Button {
                selectedTab = .keep
            } label: {
                Image(systemName: "hand.raised")
                    .font(.system(size: 20))
                    .foregroundStyle(
                        selectedTab == .keep ? .primary : .secondary
                    )
            }
            Spacer()
            
            Button {
                selectedTab = .stats
            } label: {
                Image(systemName: "square.grid.3x3")
                    .font(.system(size: 20))
                    .foregroundStyle(
                        selectedTab == .stats ? .primary : .secondary
                    )
            }
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
    GlassTabBar(selectedTab: .constant(.home))
}
