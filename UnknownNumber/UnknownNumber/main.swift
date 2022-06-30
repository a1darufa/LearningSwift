//
//  main.swift
//  UnknownNumber
//
//  Created by Айдар Абдуллин on 30.06.2022.
//

import Foundation

var nextRound = false

repeat {
    doEqualNumbers()
    
    print("Want to play again? y/n")
    if let answerNextRound = readLine(), ["Y", "y"].contains(answerNextRound) {
        nextRound = true
    }
} while nextRound == true
