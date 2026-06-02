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
        case .goals: return "trophy"
        case .opp: return "hand.draw.fill"
        case .keep: return "hand.draw"
        case .stats: return "barchart"

        }
    }
}
