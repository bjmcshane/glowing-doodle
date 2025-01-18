//
//  Item.swift
//  War Card Game
//
//  Created by Brendan McShane on 1/10/25.
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
