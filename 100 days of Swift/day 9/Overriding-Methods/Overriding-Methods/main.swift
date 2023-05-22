//
//  main.swift
//  Overriding-Methods
//
//  Created by Felipe Augusto Correia on 21/05/23.
//

import Foundation

// Classes que herdam podem implementar seus próprios métodos.
// Quando alguém desenvolve uma classe que tenha uma método que você queira reutilizar, você pode usar o override para implementa-lo do seu jeito.

class Animal {
    
    func makeNoise() {
        print("Some Noise")
    }
}

class Dog: Animal {
    override func makeNoise() {
        print("auau")
    }
}

class Cat: Animal {
    override func makeNoise() {
        print("miau")
    }
}

class Chicken: Animal {
    
}

var animal1 = Chicken()
animal1.makeNoise()
