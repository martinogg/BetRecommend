//
//  EntryArray.swift
//  BetRecommend
//
//  Created by Martin on 27/06/2018.
//  Copyright © 2018 Martin. All rights reserved.
//

import Foundation

class EntryPathArray {

    var entries: [([Entry],Double)] = []
    
    func add(_ entry: ([Entry],Double)) {
        
        entries.append(entry)
    }
}
