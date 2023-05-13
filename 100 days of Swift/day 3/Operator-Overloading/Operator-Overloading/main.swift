//
//  main.swift
//  Operator-Overloading
//
//  Created by Felipe Augusto Correia on 12/05/23.
//

import Foundation

// Operator overloading -> modo de dizer que a função do operador aritmético depende do valor que está sendo manipulado.


// SOMA
let n1 = 4
let n2 = 6
print(n1 + n2)

// SOMA DE STRINGS
let city = "Milan"
let person = "I live in"
print(person + " " +  city)

// SOMA DE ARRAYS
let primeiraArray = ["Milan", "Paris"]
let segundaArray = ["São Paulo", "Medelin"]
let minhaArray = primeiraArray + segundaArray
print(minhaArray)
print("Your age is " + String(26))

