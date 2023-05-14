//
//  main.swift
//  While-Loops
//
//  Created by Felipe Augusto Correia on 13/05/23.
//

import Foundation

// WHILE -> Verifica uma condição e enquanto essa condição for verdadeira, roda determinado trecho de código em looping.
// FOR -> Enquanto o for roda com uma sequência finita.

var number = 1

while number <= 5 {
    print(number)
    number += 1
}

let colors = ["Red", "Green", "Blue", "Orange", "Yellow"]
var colorCounter = 0
while colorCounter < 5 {
    print(colors[colorCounter])
    colorCounter += 1
}


var page: Int = 0
while page <= 5 {
    page += 1
    print("I'm reading page \(page)")
}

