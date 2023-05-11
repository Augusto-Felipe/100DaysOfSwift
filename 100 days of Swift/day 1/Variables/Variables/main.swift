//
//  main.swift
//  Variables
//
//  Created by Felipe Augusto Correia on 10/05/23.
//

import Foundation

// VARIÁVEIS: lugar onde se pode guardar um tipo de informação, são chamadas variáveis pois seus valores podem ser alterados.
// Usamos a palavra reservada 'var' para criar uma variável, e para altera-la não precisamos usar a palavra 'var novamente'
// Variáveis são necessárias, pois em certo momento trabalharemos não somente com valores estáticos como também com valores que são inputados pelo usuário ou são baixados da internet ou retornados de alguma API. Assim podemos usar as variáveis para guardar esses valores e transformá-los posteriormente como quisermos em nosso código.
// Não é possível criar mais de uma variável com o mesmo nome pois como uma variável aponta para um espaço na memória, esse espaço é único então seu nome que é o nome da variável tambem tem que ser único.


// Criando uma variável
var str = "Olá mundo"
var city = "São Paulo"
var phoneNumber = "92341234"
var sport = "Footbal"
var favoriteFood = "french fries"

// Printando o valor de uma variável
print(str)
print(city)
print(phoneNumber)
print(sport)
print(favoriteFood)

print("==================================================")

// Alterando o valor de uma variável
str = "Olá Brasil"
city = "Los Angeles"
phoneNumber = "009203993"
sport = "Soccer"
favoriteFood = "rice"

// Printando a variável na tela
print(str)
print(city)
print(phoneNumber)
print(sport)
print(favoriteFood)
