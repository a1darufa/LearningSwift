//
//  main.swift
//  swiftmeFirstApp
//
//  Created by Айдар Абдуллин on 26.06.2022.
//

import Foundation

let avalibleOperators = ["+", "-", "*", "/", "^"]
let operation: String
let amountOfNumbers: Int
var numberArray: [Double] = []

operation = getOperatop()

amountOfNumbers = getAmountOfNumbers()

numberArray = fillArray()

print("Result of operation is \(makeOperation())")
