//
//  main.swift
//  Combining-Conditions
//
//  Created by Felipe Augusto Correia on 12/05/23.
//

import Foundation

// Operadores de Combinação : && e ||

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

print("===============================")

let isOwner = true
let isAdmin = true
let isEnabledEditing = true

if isOwner || isAdmin {
    print("You can delete this post")
}

if (isOwner && isEnabledEditing) || isAdmin {
    print("You can delete this post.")
}

print("===============================")

let a = 10
let b = 5

if a >= 10 && b <= 10 {
    print("Hello, Swift!")
}


