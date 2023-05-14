//
//  main.swift
//  Variadic-Functions
//
//  Created by Felipe Augusto Correia on 14/05/23.
//

import Foundation

// Algumas funções são variádicas, o que significa que podem aceitar qualquer número de parâmetros e o swift vai converter esses valores em um array

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1,2,3,4,5,6,7,8)

func names(names: String...) {
    for name in names {
        print(name)
    }
}

names(names: "Felipe", "Ana", "Leticia", "Fabricio")
