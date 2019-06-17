//
//  FakeData.swift
//  BetRecommend
//
//  Created by Martin on 27/06/2018.
//  Copyright © 2018 Martin. All rights reserved.
//

import Foundation
import GameplayKit

class FakeData {
    
    static func generateFakeData() -> [[Bet]] {
        
        var result: [[Bet]] = []
        
        for day in 1...5 {
            
            var aNewDay: [Bet] = []
            
            for bet in 1...5 {
                
                let name = "aBetForDay:\(day)-\(bet)"
                
                let randomOdds = Double(100 + GKRandomSource.sharedRandom().nextInt(upperBound: 500)) / Double(100)
            
                let newBet = Bet.init(name: name, paybackOdds: randomOdds)
                
                aNewDay.append(newBet)
            
            }
            
            result.append(aNewDay)
        }
        
        return result
    }
    
    static func generatePhase3Data() -> [[Bet]] {
        
        var result: [[Bet]] = []
        
        var aNewDay: [Bet] = []
        aNewDay.append(Bet(name: "JapanPoland-1", paybackOdds: 2.80))
        aNewDay.append(Bet(name: "JapanPoland-X", paybackOdds: 3.10))
        aNewDay.append(Bet(name: "JapanPoland-2", paybackOdds: 2.90))
        aNewDay.append(Bet(name: "SenegalColumbia-1", paybackOdds: 4.60))
        aNewDay.append(Bet(name: "SenegalColumbia-X", paybackOdds: 3.70))
        aNewDay.append(Bet(name: "SenegalColumbia-2", paybackOdds: 1.85))
        result.append(aNewDay)
        
        aNewDay = []
        aNewDay.append(Bet(name: "PanamaTunisia-1", paybackOdds: 4.50))
        aNewDay.append(Bet(name: "PanamaTunisia-X", paybackOdds: 3.75))
        aNewDay.append(Bet(name: "PanamaTunisia-2", paybackOdds: 1.85))
        aNewDay.append(Bet(name: "EnglandBelgium-1", paybackOdds: 2.62))
        aNewDay.append(Bet(name: "EnglandBelgium-X", paybackOdds: 3.00))
        aNewDay.append(Bet(name: "EnglandBelgium-2", paybackOdds: 3.20))
        result.append(aNewDay)
        
        return result
    }
    
    static func generateMatchesOverUnder() -> [[Bet]] {
        
        var result: [[Bet]] = []
        
        var aNewDay: [Bet] = []
        
        aNewDay.append(Bet(name: "28-3pm-JapanPoland-Over", paybackOdds: 1.08))
        aNewDay.append(Bet(name: "28-3pm-JapanPoland-Under", paybackOdds: 8.0))
        aNewDay.append(Bet(name: "28-3pm-SenegalColumbia-Over", paybackOdds: 1.06))
        aNewDay.append(Bet(name: "28-3pm-SenegalColumbia-Under", paybackOdds: 9.0))
        result.append(aNewDay)
 
        
        aNewDay = []
        aNewDay.append(Bet(name: "28-7pm-PanamaTunisia-Over", paybackOdds: 1.04))
        aNewDay.append(Bet(name: "28-7pm-PanamaTunisia-Under", paybackOdds: 11.0))
        aNewDay.append(Bet(name: "28-7pm-EnglandBelgium-Over", paybackOdds: 1.1))
        aNewDay.append(Bet(name: "28-7pm-EnglandBelgium-Under", paybackOdds: 7.0))
        result.append(aNewDay)
        
        aNewDay = []
        aNewDay.append(Bet(name: "30-3pm-FranceArgentia-Over", paybackOdds: 1.11))
        aNewDay.append(Bet(name: "30-3pm-FranceArgentia-Under", paybackOdds: 6.5))
        result.append(aNewDay)

        aNewDay = []
        aNewDay.append(Bet(name: "30-7pm-UruguayPortugal-Over", paybackOdds: 1.13))
        aNewDay.append(Bet(name: "30-7pm-UruguayPortugal-Under", paybackOdds: 6.0))
        result.append(aNewDay)
        
        aNewDay = []
        aNewDay.append(Bet(name: "01-3pm-SpainRussia-Over", paybackOdds: 1.07))
        aNewDay.append(Bet(name: "01-3pm-SpainRussia-Under", paybackOdds: 8.5))
        result.append(aNewDay)

        aNewDay = []
        aNewDay.append(Bet(name: "01-7pm-CroatiaDenmark-Over", paybackOdds: 1.11))
        aNewDay.append(Bet(name: "01-7pm-CroatiaDenmark-Under", paybackOdds: 6.5))
        result.append(aNewDay)
        
        return result
    }
    
    static func generateWorldCup30thTo3rdJuly() -> [[Bet]] {
        
        var result: [[Bet]] = []
        
        var aNewDay: [Bet] = []

        
 aNewDay.append(Bet(name: "30-3pm-FranceArgentina1", paybackOdds:         2.4))
 aNewDay.append(Bet(name: "30-3pm-FranceArgentinaX", paybackOdds:         3.1))
 aNewDay.append(Bet(name: "30-3pm-FranceArgentina2", paybackOdds:         3.5))
 aNewDay.append(Bet(name: "30-3pm-FranceArgentinaO2.5", paybackOdds:         2.6))
 aNewDay.append(Bet(name: "30-3pm-FranceArgentinaU2.5", paybackOdds:         1.5))
         result.append(aNewDay)
 
         aNewDay = []
 aNewDay.append(Bet(name: "30-7pm-UruguayPortugal1", paybackOdds:         2.8))
 aNewDay.append(Bet(name: "30-7pm-UruguayPortugalX", paybackOdds:         3))
 aNewDay.append(Bet(name: "30-7pm-UruguayPortugal2", paybackOdds:         3))
 aNewDay.append(Bet(name: "30-7pm-UruguayPortugalO2.5", paybackOdds:         2.8))
 aNewDay.append(Bet(name: "30-7pm-UruguayPortugalU2.5", paybackOdds:         1.44))
         result.append(aNewDay)
 
         aNewDay = []
 aNewDay.append(Bet(name: "01-3pm-SpainRussia1", paybackOdds:         1.61))
 aNewDay.append(Bet(name: "01-3pm-SpainRussiaX", paybackOdds:         3.9))
 aNewDay.append(Bet(name: "01-3pm-SpainRussia2", paybackOdds:         6.5))
 aNewDay.append(Bet(name: "01-3pm-SpainRussiaO2.5", paybackOdds:         2.15))
 aNewDay.append(Bet(name: "01-3pm-SpainRussiaU2.5", paybackOdds:         1.7))
         result.append(aNewDay)
 
         aNewDay = []
 aNewDay.append(Bet(name: "01-7pm-CroatiaDenmark1", paybackOdds:         1.9))
 aNewDay.append(Bet(name: "01-7pm-CroatiaDenmarkX", paybackOdds:         3.3))
 aNewDay.append(Bet(name: "01-7pm-CroatiaDenmark2", paybackOdds:         5))
 aNewDay.append(Bet(name: "01-7pm-CroatiaDenmarkO2.5", paybackOdds:         2.6))
 aNewDay.append(Bet(name: "01-7pm-CroatiaDenmarkU2.5", paybackOdds:         1.5))
         result.append(aNewDay)
 
         aNewDay = []
 aNewDay.append(Bet(name: "02-BrazilMexico1", paybackOdds:         1.53))
 aNewDay.append(Bet(name: "02-BrazilMexicoX", paybackOdds:         4.33))
 aNewDay.append(Bet(name: "02-BrazilMexico2", paybackOdds:         7.5))
 aNewDay.append(Bet(name: "02-BrazilMexicoO2.5", paybackOdds:         2))
 aNewDay.append(Bet(name: "02-BrazilMexicoU2.5", paybackOdds:         1.83))
         result.append(aNewDay)
 
         aNewDay = []
 aNewDay.append(Bet(name: "03-SwedenSwitzerland1", paybackOdds:         3.1))
 aNewDay.append(Bet(name: "03-SwedenSwitzerlandX", paybackOdds:         3))
 aNewDay.append(Bet(name: "03-SwedenSwitzerland2", paybackOdds:         2.7))
 aNewDay.append(Bet(name: "03-SwedenSwitzerlandO2.5", paybackOdds:         2.75))
 aNewDay.append(Bet(name: "03-SwedenSwitzerlandU2.5", paybackOdds:         1.45))
         result.append(aNewDay)
 
        return result
        
    }
    
    static func generatePhase4() -> [[Bet]] {
        var result: [[Bet]] = []

        result.append([Bet(name: "30-FA-BothTeamsScoreNO", paybackOdds: 1.66)])
        result.append([Bet(name: "30-UP-BothTeamsScoreNO", paybackOdds: 1.57)])
        result.append([Bet(name: "01-SR-1", paybackOdds: 1.57)])
        result.append([Bet(name: "01-CD-BTS-NO", paybackOdds: 1.57)])
        result.append([Bet(name: "02-BM-1", paybackOdds: 1.5)])
        result.append([Bet(name: "02-BJ-1", paybackOdds: 1.4)])
        result.append([Bet(name: "03-SS-BTS-NO", paybackOdds: 1.66)])
        result.append([Bet(name: "03-CE-BTS-NO", paybackOdds: 1.61)])
        
        return result

    }
    
    static func generateRouletteOnRed() -> [[Bet]] {
        var result: [[Bet]] = []
        
        result.append([Bet(name: "OnRed", paybackOdds: 2.00, chanceOdds: (18.00 / 37.00))])
        result.append([Bet(name: "OnRed", paybackOdds: 2.00, chanceOdds: (18.00 / 37.00))])
        result.append([Bet(name: "OnRed", paybackOdds: 2.00, chanceOdds: (18.00 / 37.00))])
        result.append([Bet(name: "OnRed", paybackOdds: 2.00, chanceOdds: (18.00 / 37.00))])
        result.append([Bet(name: "OnRed", paybackOdds: 2.00, chanceOdds: (18.00 / 37.00))])
        result.append([Bet(name: "OnRed", paybackOdds: 2.00, chanceOdds: (18.00 / 37.00))])
        result.append([Bet(name: "OnRed", paybackOdds: 2.00, chanceOdds: (18.00 / 37.00))])
        result.append([Bet(name: "OnRed", paybackOdds: 2.00, chanceOdds: (18.00 / 37.00))])
        result.append([Bet(name: "OnRed", paybackOdds: 2.00, chanceOdds: (18.00 / 37.00))])
        result.append([Bet(name: "OnRed", paybackOdds: 2.00, chanceOdds: (18.00 / 37.00))])
        result.append([Bet(name: "OnRed", paybackOdds: 2.00, chanceOdds: (18.00 / 37.00))])
        result.append([Bet(name: "OnRed", paybackOdds: 2.00, chanceOdds: (18.00 / 37.00))])
        
        return result
    }
    
    static func generateRouletteOn2of3Thirds() -> [[Bet]] {
        var result: [[Bet]] = []
        
        result.append([Bet(name: "On1stAnd2ndThirds", paybackOdds: 1.50, chanceOdds: (24.00 / 37.00))])
        result.append([Bet(name: "On1stAnd2ndThirds", paybackOdds: 1.50, chanceOdds: (24.00 / 37.00))])
        result.append([Bet(name: "On1stAnd2ndThirds", paybackOdds: 1.50, chanceOdds: (24.00 / 37.00))])
        result.append([Bet(name: "On1stAnd2ndThirds", paybackOdds: 1.50, chanceOdds: (24.00 / 37.00))])
        result.append([Bet(name: "On1stAnd2ndThirds", paybackOdds: 1.50, chanceOdds: (24.00 / 37.00))])
        result.append([Bet(name: "On1stAnd2ndThirds", paybackOdds: 1.50, chanceOdds: (24.00 / 37.00))])
        result.append([Bet(name: "On1stAnd2ndThirds", paybackOdds: 1.50, chanceOdds: (24.00 / 37.00))])
        result.append([Bet(name: "On1stAnd2ndThirds", paybackOdds: 1.50, chanceOdds: (24.00 / 37.00))])
        result.append([Bet(name: "On1stAnd2ndThirds", paybackOdds: 1.50, chanceOdds: (24.00 / 37.00))])
        result.append([Bet(name: "On1stAnd2ndThirds", paybackOdds: 1.50, chanceOdds: (24.00 / 37.00))])
        result.append([Bet(name: "On1stAnd2ndThirds", paybackOdds: 1.50, chanceOdds: (24.00 / 37.00))])
        result.append([Bet(name: "On1stAnd2ndThirds", paybackOdds: 1.50, chanceOdds: (24.00 / 37.00))])
        
        return result
    }
    
    static func generateSemiQuarterFinal() -> [[Bet]] {
        var result: [[Bet]] = []
        
        result.append([Bet(name: "SwedenEngland2", paybackOdds: 1.95)])
        result.append([Bet(name: "RussiaCroatia2", paybackOdds: 2.10)])
        result.append([Bet(name: "FranceBelgium1", paybackOdds: 2.55)])
        
        
        return result
    }
}
