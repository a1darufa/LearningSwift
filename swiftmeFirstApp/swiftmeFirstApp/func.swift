//
//  func.swift
//  swiftmeFirstApp
//
//  Created by Айдар Абдуллин on 26.06.2022.
//

import Foundation

func getOperatop() -> String {
    var stringFromConsole: String?
    print("Chose operator \(avalibleOperators)")
    repeat {
        stringFromConsole = readLine()
        guard avalibleOperators.contains(stringFromConsole ?? "") else {
            print("Wrong input, try again...")
            continue
        }
    } while !avalibleOperators.contains(stringFromConsole ?? "")
    return stringFromConsole!
}

func getNumber(_ string: String) -> Double {
    var stringFromConsole: String?
    var result: Double?
    print(string)
    repeat {
        stringFromConsole = readLine()
        result = Double(stringFromConsole!) ?? nil
        guard result != nil else {
            print("Wrong input, try again...")
            continue
        }
    } while result == nil
    return result!
}

func getAmountOfNumbers() -> Int {
    let string = "Enter amount of numbers"
    var result = 0
    if operation == avalibleOperators[4] {
        result = 2
    } else {
        result = Int(getNumber(string))
    }
    return result
}

func fillArray() -> [Double] {
    var amount = amountOfNumbers
    var string = "Enter \(amount) numbers"
    var result: [Double] = []
    for _ in 1...amountOfNumbers {
        result.append(getNumber(string))
        amount -= 1
        string = "Enter \(amount) numbers"
    }
    return result
}

func makeOperation() -> Double {
    var result = numberArray[0]
    for i in 1..<amountOfNumbers {
        switch operation {
        case "+":
            result += numberArray[i]
        case "-":
            result -= numberArray[i]
        case "*":
            result *= numberArray[i]
        case "/":
            guard numberArray[i] != 0 else {
                print("Divide by 0 is restricted")
                result = 0
                break
            }
            result /= numberArray[i]
        case "^":
            result = pow(numberArray[0], numberArray[1])
        default:
            break
        }
    }
    return result
}
