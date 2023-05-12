//
//  main.swift
//  Arrays
//
//  Created by Felipe Augusto Correia on 11/05/23.
//

import Foundation

// Arrays -> Lista que guarda vários valores.
// Essa lista é ordenada, ou seja podemos buscar seus itens a partir de sua posição dentro da array, seu index no caso.
// A contagem dos itens dentro de uma array sempre começa no 0.

let membro1 = "baixista"
let membro2 = "guitarrista"
let membro3 = "baterista"
let membro4 = "vocalista"

let banda = [membro1, membro2, membro3, membro4]
print(banda)

// Buscando um valor dentro de um array a partir de sua posição(index).
print(banda[0])


print("===============================================================")

// Criação de uma Array
var averages = [98.5, 97.1, 99.9]
var characters: [String] = ["Doctor Who"]
var readings: [Bool] = [false, true, false, true]
var scores: [Int] = [10,12,9]
var singers = ["Taylor", "Adele", "Justin"]


// Buscando valores dentro de uma array
print(averages[2])
print(characters[0])
print(readings[1])
print(scores[1])
print(singers[0])

print("============================================================")

// Arrays aceitam items duplicados diferentes dos Sets
var cities: [String] = ["London", "Paris", "New York", "New York"]
print(cities)
