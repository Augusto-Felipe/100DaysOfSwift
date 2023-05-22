//
//  main.swift
//  Classes
//
//  Created by Felipe Augusto Correia on 21/05/23.
//

import Foundation

// Tem um funcionamento parecido com structs porém não possuem um init por baixo dos panos, por isso temos que sempre criar nosso construtor.
// Diferente de structs, classes trabalham com herança.
// Cópias de structs são sempre unicas enquanto cópias de classes apontam para a mesma localização
// Classes que deinitializers que são métodos que são chamados quando a instância de uma classe é destruida.


class Pessoa {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var person1 = Pessoa(name: "Felipe", age: 28)
