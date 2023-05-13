//
//  main.swift
//  Conditions
//
//  Created by Felipe Augusto Correia on 12/05/23.
//

import Foundation

// Condições
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("BlackJack")
} else {
    print("Regular cards")
}

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack")
} else {
    print("Regular cards.")
}

print("============================================")

let score = 90001

if score > 9000 {
    print("It's over 9000!")
}

if score <= 9000 {
    print("It's not over 9000!")
}

// Usando o else if para simplificar o código acima e não fazer a linguagem fazer 2 verificações.

if score > 9000 {
    print("It's over 9000!")
} else if score == 9000 {
    print("It's exactly 9000!")
} else {
    print("It's not over 9000!")
}
