//
//  main.swift
//  Closures-Return-Values
//
//  Created by Felipe Augusto Correia on 15/05/23.
//

import Foundation

// Retornando valores de uma closure.

let driving = {(place: String) in
    print("I'm driving to \(place)")
}

driving("Paris")

print("==================================")

let eating = {(meal: String) -> String in
    return "I'm eating \(meal)"
}

let message = eating("Pizza")
print(message)

print("==================================")

let payment  = {(user: String) -> Bool in
    print("\(user) payment.")
    return true
}

let message2 = payment("Felipe")
print(message2)
