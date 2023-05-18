//
//  main.swift
//  Property-Obrserves
//
//  Created by Felipe Augusto Correia on 18/05/23.
//

import Foundation

// Property obeserver -> didSet e willSet -> permitem você rodar código antes ou depois de alguma propriedade ter seu valor alterado.
// Não pode adicionar um observer em uma constante let.

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount) percent.")
        }
    }
}

var progress = Progress(task: "loading data", amount: 30)
progress.amount = 34

print("===============================================")

struct BirthDay {
    var name: String
    var age: Int {
        didSet {
            print("\(name) is now \(age) years old.")
        }
    }
}

var myBirthday = BirthDay(name: "Felipe", age: 28)
myBirthday.age = 28
myBirthday.age = 30

print("===============================================")

struct Clothes {
    var name: String {
        didSet {
            print("Clotes changed to \(name)")
        }
    }
}

var myClothes = Clothes(name: "hood")
myClothes.name = "skirt"
