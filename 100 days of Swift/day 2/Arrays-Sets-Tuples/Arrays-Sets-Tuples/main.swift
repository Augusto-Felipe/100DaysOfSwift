//
//  main.swift
//  Arrays-Sets-Tuples
//
//  Created by Felipe Augusto Correia on 11/05/23.
//

import Foundation

// Tupla -> se por acaso você precisar de valores que serão fixos, e podem ser identificados por um nome ou index também fixos.
// Não é possível adicionar ou remover items.
// Não é possível mudar o tipo de items depois da tupla ser criada.
// É possível pesquisar valores pelo seu nome ou index.
let address = (house: 555, street: "Taylor Swift", city: "Nashville")


// Set -> se por caso você precisar saber se existe determinado item na sua lista e precisa dessa informação com certa agilidade.
// Set não é ordenada, ou seja não é possível pesquisar items pelo seu index(posição).
// Set não aceita valores duplicados, valores duplicados serão desconsiderados.
var set = Set(["Engineer", "Developer", "Lawyer"])
set.insert("pilot")
set.remove("pilot")


// Array -> se por acaso você precisar pesquisar items pela sua posição exata na lista ou precisa de uma lista que pode conter items duplicados, ou se por acaso a ordem que esses items foi criada realmente importa.
// Array tem uma posição de items ordenada, sendo possível pesquisar os mesmos pelo seu index.
// Array aceita items duplicados.
var myArray = ["Paris", "London", "New York"]
myArray.append("Dehli")
myArray.remove(at: 0)



// Casos de uso:
// Lista de palavras no dicionário que não contém elementos duplicados e a ordem não importa. -> Set
// Todos os artigos lidos pelo usuário, usa-se o Set se a ordem não importa e um Array caso contrário. -> Array ou Set
// Pontuação em um jogo, pode se usar o Array para sempre aparecer a ultima pontuação. -> Array
// Lista de fazeres, pode ser usada um Array para deixar explicito as últimas anotações adicionadas. -> Array
// Uma lista com elementos fixos. -> Tuple


