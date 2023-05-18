//
//  main.swift
//  Properties-and-Methods-of-Array
//
//  Created by Felipe Augusto Correia on 18/05/23.
//

import Foundation

var city = ["Milan", "São Paulo", "Medelin"]

print(city.count)
city.append("Roma")
var result = city.firstIndex(of: "Milan")
print(result)
print(city.sorted())
city.remove(at: 0)
