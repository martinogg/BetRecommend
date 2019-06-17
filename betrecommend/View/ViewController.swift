//
//  ViewController.swift
//  BetRecommend
//
//  Created by Martin on 27/06/2018.
//  Copyright © 2018 Martin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        start()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func start() {
        
        let fakeData = FakeData.generatePhase3Data()
        let startAmount = Double(1000)
        let desiredReturn = Double(1050)
        
        let result = BRLib.calculateBetStrategy(bets: fakeData, startBalance: startAmount, desiredBalance: desiredReturn)
        print("Bet Recommend")
        print("--- ---------")
        
        var iPath = 0
        for path in result {
            
            print("-------")
            print("Path \(iPath) likelihood of Losing: \(path.1)")
            
            var day = 0
            for entry in path.0 {
                
                day = day + 1
                
                if entry.bet.paybackOdds > 1.00 {
                
                    print("Day \(day) Balance: \(entry.startingBalance) bet \(entry.bet.name) at $\(entry.stakeAmount) at payback Odds \(entry.bet.paybackOdds) likelihood:\(entry.bet.chanceOdds)"
                    )
                }
                else {
                    
                    print("Day \(day) Balance: \(entry.startingBalance)")
                }
                
                
            }
            
            iPath = iPath + 1
        }
    }
    
}

