//
//  main.swift
//  Closures
//
//  Created by Felipe Augusto Correia on 15/05/23.
//

import Foundation

// Swift nos permite criar uma função e associa-la a uma variável.
// É bastante usada quando temos que fazer algo porém não no momento.
// - Rodar um código depois de um delay.
// - Rodar um código após uma animação.
// - Rodar um código após um download finalizar.
// - Rodar um código quando o usuário selecionar uma opção do menu.

let driving = {
    print("I'm driving my car.")
}

driving()

let eating = {
    print("I'm eating right now.")
}

eating()

let learnSwift = {
    print("Closures are like functions.")
}

learnSwift()

let greetUser = {
    print("Hi there!")
}

greetUser()
