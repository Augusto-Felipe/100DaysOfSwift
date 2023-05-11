//
//  main.swift
//  MultiLine-Strings
//
//  Created by Felipe Augusto Correia on 10/05/23.
//

import Foundation

// Se por acaso você desejar criar um texto com quebra de linha, deve inseri-lo dentro de """ 3 aspas duplas.
// É uma boa prática se você estiver trabalhando com textos muito grandes pois torna os mesmos mais legíveis em seu código.
// É importante que as aspas estejam em suas proprias linhas para funcionar.

var myText = """
Estou usando 3 as triplas
para conseguir cria um texto
que tenha quebra de linhas,
geralmente textos muito grandes
"""

print(myText)

print("====================================================")

var myOtherText = """
I'm using those triple quotes
to break lines in my code
thats usually a good idea
when working with large texts
"""

print(myOtherText)

print("=====================================================")

var today = """
Today, the weather is kind
rainy, the temperature is good
but the sky looks cloudy,
I think its going to rain
"""

print(today)

print("=====================================================")


// E se por acaso você quiser formatar seu texto porém não quiser quebrar linhas?
// Você pode usar a barra invertida no final de casa quebra de linha, assim seu texto somente será formatado em seu código e não no print


var textWithoutLineBreak = """
Vamos supor que eu queira formatar \
o texto apenas no código, porém não \
quero realmente que ele quebra linha \
posso usar essa barra invertida aonde \
eu quiser que tenha uma formatação
"""

print(textWithoutLineBreak)
