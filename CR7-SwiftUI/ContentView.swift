//
//  ContentView.swift
//  CR7-SwiftUI
//
//  Created by Swantan Barua on 02/06/26.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    @State private var selectedTab: Tab = .home
    @Namespace private var animation
    
    // MARK: - BODY
    var body: some View {
        
        ZStack(alignment: .bottom) {
            switch selectedTab {
                
            case .home:
                HomeView()
                
            case .goals:
                GoalsView()
                
            case .opp:
                OppView()
                
            case .keep:
                KeepersView()
                
            case .stats:
                StatsView()
            }
            
            GlassTabBar(selectedTab: $selectedTab)
        }
    }
}

#Preview {
    ContentView()
}
