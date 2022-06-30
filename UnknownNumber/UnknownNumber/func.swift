//
//  func.swift
//  UnknownNumber
//
//  Created by Айдар Абдуллин on 30.06.2022.
//

import Foundation

func getNumberUInt8() -> UInt8 {
    var result: UInt8?
    repeat {
        result = UInt8(readLine()!) ?? nil
        guard result != nil else {
            print("Wrong input, try again...")
            continue
        }
    } while result == nil
    return result!
}

func doEqualNumbers() {
    let randomNumber = UInt8.random(in: 1...250)
    var myNumber: UInt8
    
    print("Computer made a random number. You should to guess the number.")
    print("Enter your number from \(UInt8.min) to \(UInt8.max) and press Enter")
    
    repeat {
        myNumber = getNumberUInt8()
        if myNumber == randomNumber {
            print("You guessed right!")
        } else if myNumber < randomNumber {
            print("You choice is less than the random number")
        } else if myNumber > randomNumber {
            print("You choice is more than the random number")
        }
    } while randomNumber != myNumber
}
