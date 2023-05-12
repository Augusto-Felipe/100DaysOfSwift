//
//  main.swift
//  Enum-Associated-Values
//
//  Created by Felipe Augusto Correia on 11/05/23.
//

import Foundation

// Enums nos permitem associar valores com cada caso, como parâmetros em uma função deixando assim as informações mais detalhadas.

enum Hobby {
    case tocar(instrumento: String)
    case jogar(jogo: String)
    case cantar(musica: String)
    case conversar(sobre: String)
}

let tocar = Hobby.tocar(instrumento: "guitarra")
print(tocar)
let jogar = Hobby.jogar(jogo: "lol")
print(jogar)
let conversar = Hobby.conversar(sobre: "futebol")
print(conversar)


enum Weather {
    case sunny
    case windy(speed: Int)
    case rainy(chance: Int, amount: Int)
}

let weather = Weather.rainy(chance: 55, amount: 12)
print(weather)


enum Comidas {
    case massas
}


