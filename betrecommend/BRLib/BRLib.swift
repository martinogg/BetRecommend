//
//  BRLib.swift
//  BetRecommend
//
//  Created by Martin on 27/06/2018.
//  Copyright © 2018 Martin. All rights reserved.
//

import Foundation

class BRLib {
    
    static func calculateBetStrategy(bets: [[Bet]], startBalance: Double, desiredBalance: Double) -> [([Entry], Double)] {
        
        var allEntryPaths: [([Entry], likelihood: Double)] = calculateAllEntryPaths(bets, startBalance, desiredBalance)
        
        allEntryPaths.sort { $0.likelihood > $1.likelihood }
     
        return (allEntryPaths)
    }
    
    static private func calculateAllEntryPaths(_ bets: [[Bet]], _ startBalance: Double, _ desiredBalance: Double) -> [([Entry], Double)] {
        let firstEntry = Entry(bet: Bet.noBet(), stakeAmount: 0.0, startingBalance: startBalance, parentEntry: nil)
        
        firstEntry.possibleNextEntryIfFail = possibleNextEntries(bets: bets, onDay: 0, rootEntry: firstEntry, startBalance: startBalance, desiredBalance: desiredBalance);

        let entryPathArray = EntryPathArray();
        buildEntryPaths(fromRootEntry: firstEntry, pathArrayToUpdate: entryPathArray)

        return entryPathArray.entries
    }
    
    static private func buildEntryPath(fromEndEntry end:Entry) -> ([Entry], Double) {

        var newEntryPath: [Entry] = []
        var likelihood: Double = 1.00
        var currentEntry: Entry? = end;
        
        while currentEntry != nil {
            
            let newLikelihood = 1.00 - (currentEntry!.bet.chanceOdds) // The odds of losing
            if (newLikelihood > 0.00) {
                likelihood = likelihood * newLikelihood
            }
            newEntryPath.insert(currentEntry!, at: 0)

            currentEntry = currentEntry?.parentEntry
        }
        
        return (newEntryPath, likelihood)
    }
    
    static private func buildEntryPaths(fromRootEntry root:Entry, pathArrayToUpdate:EntryPathArray) {
        
        guard let possibles = root.possibleNextEntryIfFail,
            possibles.count > 0 else {
            
                pathArrayToUpdate.add(buildEntryPath(fromEndEntry: root))
                return
        }
        
        for node in possibles {
            
            buildEntryPaths(fromRootEntry: node, pathArrayToUpdate: pathArrayToUpdate)
        }
    }
    
    static private func possibleNextEntries(bets: [[Bet]], onDay:Int, rootEntry:Entry, startBalance: Double, desiredBalance: Double) -> [Entry] {
        
        var result: [Entry] = []
        
        if (onDay >= bets.count) {
            
            // There are no more days.
            return result;
        }
        
        let newBalance = rootEntry.startingBalance - rootEntry.stakeAmount;
        
        var newBets = bets[onDay]
        newBets.append(Bet.noBet())
        
        for bet in newBets {
            
            // Assuming the previous bet lost:
   
            let requiredStakeAmount = requiredStakeToGetDesiredBalance(bet: bet, startBalance: newBalance, desiredBalance: desiredBalance)
            
            if (requiredStakeAmount <= newBalance) {

                // Its a possibility
                let newEntry = Entry(bet: bet, stakeAmount: requiredStakeAmount, startingBalance: newBalance, parentEntry: rootEntry)
                newEntry.possibleNextEntryIfFail = possibleNextEntries(bets: bets, onDay: onDay+1, rootEntry: newEntry, startBalance: startBalance, desiredBalance: desiredBalance)
                result.append(newEntry)
            }
            
        }
        
        return result
    }
    
    static private func requiredStakeToGetDesiredBalance(bet: Bet, startBalance: Double, desiredBalance: Double) -> Double {
        
        if (bet.paybackOdds <= 1.00) {
            
            return 0.00;
        }
        
        let gainRequired = desiredBalance - startBalance;
        let stake = gainRequired / (bet.paybackOdds - 1.00)
        
        /*
        startBalance + ? = desiredBalance
        (startBalance - stake) + (stake * bet.odds) = desiredBalance
        startBalance + (stake * bet.odds) - stake  = desiredBalance
        startBalance + stake(bet.odds - 1) = desiredBalance
        stake(bet.odds - 1) = (desiredBalance - startBalance)
        stake = (desiredBalance - startBalance) / (bet.odds - 1)
        */
        
        
        return stake
    }
}
