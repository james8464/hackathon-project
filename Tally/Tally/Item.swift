//
//  Item.swift
//  Tally
//
//  Created by James Alexander Durup on 06/10/2026.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
