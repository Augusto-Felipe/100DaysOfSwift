//
//  main.swift
//  Enum-Raw-Values
//
//  Created by Felipe Augusto Correia on 11/05/23.
//

import Foundation

enum Planet: Int {
    case mercury
    case earth
    case mars
    case venus
}

let earth = Planet(rawValue: 2)
print(earth?.rawValue)

