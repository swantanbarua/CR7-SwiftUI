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
    
    // MARK: - BODY
    var body: some View {
        HomeView()
    }
}

#Preview {
    ContentView()
}
