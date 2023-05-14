//
//  main.swift
//  For-Loop
//
//  Created by Felipe Augusto Correia on 13/05/23.
//

import Foundation

let count = 1...10

for number in count {
    print(number)
}

let albums = ["On Every Street", "Communique"]

for album in albums {
    print(album)
}

let cities = ["Milan", "São Paulo", "Medelin", "New York"]

for city in cities {
    print(city)
}


// Usamos o underline se caso não precisarmos ler algum valor dentro de uma array e apenas quisermos repetir algo.
for _ in 1...5 {
    print("Teste")
}
