//
//  main.swift
//  Functions-Returning-Values
//
//  Created by Felipe Augusto Correia on 14/05/23.
//

import Foundation

// Podemos fazer com que nossa função retorne valores.
// Se por acaso você precisar retornar mais de um dado podemos retornar um array.

func product(n1: Int, n2: Int) -> String {
    return "O valor da multiplicação entre \(n1) e \(n2) = \(n1 * n2)"
}

let resultado = product(n1: 3, n2: 6)
print(resultado)


print("==============================================================")

func getUsers() -> [String] {
    return ["Taylor", "Swift"]
}

let users = getUsers()
print(users[1])

print("==============================================================")


