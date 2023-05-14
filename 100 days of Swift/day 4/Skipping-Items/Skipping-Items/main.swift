//
//  main.swift
//  Skipping-Items
//
//  Created by Felipe Augusto Correia on 13/05/23.
//

import Foundation

// CONTINUE -> pula o item atual e vai para o proximo, no caso abaixo pula 5 quando o i == 5.

for i in 1...10 {
    if i == 5 {
        continue
    }

    print(i)
}

