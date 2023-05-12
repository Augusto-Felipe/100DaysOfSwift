//
//  main.swift
//  Dictionaries
//
//  Created by Felipe Augusto Correia on 11/05/23.
//

import Foundation

// Dicionário -> Dicionários possuem seus valores armazenados por uma CHAVE : VALOR (KEY : VALUE).
// É possível usar a CHAVE não só como uma String mas com qualquer coisa, porém usar uma String é o jeito mais comum.
// Dicionários permitem a escolha de uma KEY que identifica o valor do item .

var casado: [String: Bool] = [
    "Felipe": false,
    "Ana": true,
    "Carlos": false,
    "Leticia": true
]

var user: [String: String] = [
    "Name": "Felipe",
    "Country": "France",
    "Job": "Developer"
]

let notas = [
    "Felipe": 1.67,
    "Ana": 1.65
]

let pontuacao: [String: Double] = [
    "player1": 2.456,
    "player2": 1.345
]

// Acessando items
print(notas["Ana"] ?? 0)
print(pontuacao["player1"] ?? 0)
print(casado["Ana"] ?? 0)
print(user["Job"] ?? 0)
print(user["Name"] ?? 0)

print("=========================================================")


// Assim como explicado acima, é possível usar outros tipos de valores além de uma String, no caso abaixo usamos um INT.
let scores: [Int: Double] = [
    1: 2.345,
    2: 1.234,
    3: 500,
]

// Acessando items.
print(scores[2] ?? 0)

// Acessando items que não existem e atribuindo um valor padrão
var media: [String: Double] = [
    "Geografia": 10,
    "Historia": 10,
    "Quimica": 7,
]

print(media["Quimica"] ?? 0)
print(media["Biologia", default: 9])



