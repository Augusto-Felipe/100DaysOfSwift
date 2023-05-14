//
//  main.swift
//  Exiting-Loop
//
//  Created by Felipe Augusto Correia on 13/05/23.
//

import Foundation

// BREAK -> nos permite sair de um looping imediatamente.

var counter = 0
var countries = ["INDIA", "EUA", "BRASIL", "COLOMBIA", "JAPAO", "CHILE"]

for country in countries {
    print(country)
    if country == "EUA" {
        print("saiu.")
        break
    }
}

while counter <= 6 {
    print(counter)
    counter += 1
    
    if counter == 3 {
        print(counter)
        print("saiu.")
        break
    }
}
