//
//  Entry.swift
//  BetRecommend
//
//  Created by Martin on 27/06/2018.
//  Copyright © 2018 Martin. All rights reserved.
//

import Foundation

class Entry {
    
    var bet: Bet
    var stakeAmount: Double
    var startingBalance: Double
    var possibleNextEntryIfFail: [Entry]? = []
    var parentEntry: Entry?
    
    init(bet: Bet, stakeAmount: Double, startingBalance: Double, parentEntry: Entry?) {
        
        self.bet = bet
        self.stakeAmount = stakeAmount
        self.startingBalance = startingBalance
        self.parentEntry = parentEntry
    }
}
