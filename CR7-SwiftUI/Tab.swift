//
//  Tab.swift
//  CR7-SwiftUI
//
//  Created by Swantan Barua on 02/06/26.
//

import SwiftUI

enum Tab: String, CaseIterable {
    
    case home
    case goals
    case opp
    case keep
    case stats
    
    var icon: String {
        
        switch self {
            
        case .home: return "house"
        case .goals: return "list.bullet"
        case .opp: return "hexagon"
        case .keep: return "hand.raised"
        case .stats: return "square.grid.3x3"

        }
    }
}
