//
//  main.swift
//  Dictionary-Default-Values
//
//  Created by Felipe Augusto Correia on 11/05/23.
//

import Foundation

// Se por acaso você tentar ler um valor de um dicionário usando uma KEY que não existe, o mesmo retorna NIL. Podemos usar uma alternativa e passar um valor padrão caso não encontrar a KEY.

var scores = [
    "Felipe": 7,
    "Ana": 9
]

print(scores["Carlos", default: 0])

var results = [
    "Geografia": 7,
    "Historia": 9
]

print(results["Historia", default: 0])

print(results["Sociologia", default: 0])

