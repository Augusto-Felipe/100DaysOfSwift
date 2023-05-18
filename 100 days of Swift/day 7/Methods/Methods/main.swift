//
//  main.swift
//  Methods
//
//  Created by Felipe Augusto Correia on 18/05/23.
//

import Foundation

// Funções dentro de structs são chamados de Métodos.

struct City {
    var population: Double
    
    func colectTaxes() -> String {
        return "\(population * 150) dollars"
    }
}

var myCity = City(population: 5.000)
print(myCity.colectTaxes())
