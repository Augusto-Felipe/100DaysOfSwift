//
//  main.swift
//  Throwing-Function
//
//  Created by Felipe Augusto Correia on 14/05/23.
//

import Foundation

// As vezes algumas funções podem dar erro ou por causa de algum erro interno ou algum dado incorreto que o inserido na função.
// Para esses casos podemos usar o throw para caso aconteça algum desses erros.
// Primeiro precisamos definir um enum com os erros possíveis, eles devem ser do tipo Error.


enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "123" {
        throw PasswordError.obvious
    } else {
        print("Password accepted")
        return true
    }
}

// Aqui sempre que nossa senha for 123 sempre teremos um erro que passamos no enum, no caso ela vai cair no case obvious, então quando tentarmos rodar essa função dentro do do try catch, sempre vai cair no catch que é onde pode dar erro.
do {
    let result = try checkPassword("123")
    print(result)
} catch {
    print("Error")
}


