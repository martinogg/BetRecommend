//
//  Bet.swift
//  BetRecommend
//
//  Created by Martin on 27/06/2018.
//  Copyright © 2018 Martin. All rights reserved.
//

import Foundation

class Bet {
    
    var name: String
    var paybackOdds: Double
    var chanceOdds: Double // The chance of winning ( between 0 (impossible) and 1 (certain) )
  
    init(name: String, paybackOdds: Double) {
        
        self.name = name
        self.paybackOdds = paybackOdds
        self.chanceOdds = 0.9 * (1.00 / paybackOdds)  // 10% juice
        
    }
    
    init(name: String, paybackOdds: Double, chanceOdds: Double) {
        
        self.name = name
        self.paybackOdds = paybackOdds
        self.chanceOdds = chanceOdds
    }
    
    
    static func noBet() -> Bet {
        
        let noBet = Bet(name: "No Bet today", paybackOdds: 1.0, chanceOdds: 1.0)
        return noBet
    }
}

