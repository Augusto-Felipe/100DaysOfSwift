//
//  main.swift
//  Sets
//
//  Created by Felipe Augusto Correia on 11/05/23.
//

import Foundation

// Assim como Arrays, Sets são listas que guardam valores porém de forma desordenada, sem uma ordem definida.
// Como não existe uma ordem definida, não é possível buscar items pelo seu index.
// Outra informação importante, é que Sets NÃO ACEITAM ITEMS DUPLICADOS. TODOS OS ITEMS DEVEM SER ÚNICOS.

let color = Set(["red", "green", "purple", "purple", "purple", "purple"])
print(color)

// Uma forma muito boa para usar Sets, seria se por acaso você quiser saber se existe um item na lista de forma rápida, pois como ele não tem uma ordem específica, ele não vai começar do index 0 e percorrer toda a lista para buscar um item que é o caso das arrays.
// O fato de não ter uma ordem otimiza o tempo de reposta se um item existe ou não no array.

let cities = Set(["New York", "São Paulo", "Paris", "Milão", "Milão"])
let names = Set(["Felipe", "Ana", "Carlos", "Leticia"])
let scores = Set([12, 34, 45, 45, 45])
let readings = Set([true, false, true, true])
let attendees = Set([100,100,101,100])
let users = ["Taylor", "Adele"]

print(cities)
print(names)
print(scores)
print(readings)
print(attendees)
print(users)
