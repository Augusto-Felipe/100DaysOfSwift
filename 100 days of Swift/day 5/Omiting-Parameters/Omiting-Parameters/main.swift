//
//  main.swift
//  Omiting-Parameters
//
//  Created by Felipe Augusto Correia on 14/05/23.
//

import Foundation

// Podemos omitir parâmetros de uma função usando underline.
// Em alguns casos pode tornar seu código mais natural de se ler porém é um boa prática nomear parâmetros.

func greet(_ person: String) {
    print("Hello \(person)")
}

greet("Leticia")

func buy(_ item: String) {
    print("Buying \(item)")
}

buy("Pencil")


