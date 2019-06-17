# BetRecommend
Uses Martingale strategy on unrelated sequential bookmaking events to determine best strategy to win

# Martingale strategy recap
[Martingale strategy](https://en.wikipedia.org/wiki/Martingale_(betting_system)) is a strategy used in Roullette, whereby stakes on losing (near) 50/50 bets are doubled on each play until a winning bet occurs, thus regaining all previous losses and gaining the initial bet over the initial balance.

Bet Recommend uses the Martingale concept of 'The Winning Bet' that will recoup loses on successive bets placed on a specified range of possible bets, placing one bet after losing the last until one wins. When one win occurs, there is no need to continue playing as the target balance will have been acheived.

# Example usage 

Imagine a scenario like the World Cup, where many matches are scheduled to be played in Group stages. Each match is independant of the other so odds should not vary due to previous played matches of other teams. All odds are known ahead of time. Some matches are played at the same time.

Odds notation: 1 X 2: Win(Team 1 wins), Draw, Lose(Team 2 wins)

Day 1: 
Japan vs Poland (2.8, 3.1, 2.9)
Senegal vs Columbia (4.60, 3.70, 1.85)

Day 2:
Panama vs Tunisia (4.5, 3.7, 1.85)
England vs Belgium (4.6, 3.75, 1.85)

In this example, there are 2 days, each with 2 games, with 3 outcomes each. The player starts with 1000 credits and wishes to get 1050 in the end. The user will place a bet on day 1, and if it loses, place a bet on day 2. The bet amounts will be such that the final balance will be 1050 on the first win.

The app will run through every combination of sequential bets (including not making a bet on day 1 or 2) making for 49 different bet combinations that are possible to acheive the target amount and determine the likehood for each outcome.

--> Run through of app:
Path 48 likelihood of Losing: 0.2636961285609935
Day 1 Balance: 1000.0
Day 2 Balance: 1000.0 bet SenegalColumbia-2 at $58.8235294117647 at payback Odds 1.85 likelihood:0.4864864864864864
Day 3 Balance: 941.1764705882352 bet PanamaTunisia-2 at $128.0276816608997 at payback Odds 1.85 likelihood:0.4864864864864864

In this scenario, the advice was to bet 58.83 on Columbia to win on day 1. Starting with 1000 credits, a win would mean a payout of 108.84. 1000 - 58.83 + 108.84 = 1050.01 The player can then stop now as the desired outcome is reached.

However, if that bet was lost, the new balance is 941.16.
In day 2, the next advice is 128.02 on Tunisia to win. A win would mean 941.16 - 128.02 + 236.38 = 1049.52 

If either of these bets wins, the player gets approximately 1050 back on 1000 initial.

The chance of both bets lost is 26.37% (losing both bets in succession)

# Project Outcome

I'm looking to collaborate on this app in order to make it more useful to people. Please feel free to send a PR or email me at martin@martinogg.com All suggestions welcome!



