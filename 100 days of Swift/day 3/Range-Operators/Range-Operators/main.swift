//
//  main.swift
//  Range-Operators
//
//  Created by Felipe Augusto Correia on 12/05/23.
//

import Foundation

// Range Operators

let score = 85

switch score {
case 0..<50:
    print("Not Close")
case 50..<100:
    print("Close")
case 85:
    print("You got it.")
default:
    print("Too far")
}

