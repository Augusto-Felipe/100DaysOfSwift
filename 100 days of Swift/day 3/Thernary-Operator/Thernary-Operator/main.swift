//
//  main.swift
//  Thernary-Operator
//
//  Created by Felipe Augusto Correia on 12/05/23.
//

import Foundation

// Operador ternário -> funciona com três valores, checa uma condição no primeiro valor, se for verdadeira retorna o segundo valor e se for falsa retorna o terceiro valor.

let firstCard = 11
let secondCard = 10
print(firstCard >= secondCard ? "True" : "False")

print("===========================================")

let isAuthenticated: Bool = false
print(isAuthenticated ? "Welcome!": "Who are you?")

print("===========================================")

print(firstCard + 5 == secondCard ? "Verdadeiro" : "Falso")
