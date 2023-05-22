//
//  ViewController.swift
//  Storm-Viewer
//
//  Created by Felipe Augusto Correia on 22/05/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Com este tipo, podemos trabalhar com arquivos
        let fm = FileManager.default
        
        // Bundle -> contém nosso projeto compilado e nossos assets
        let path = Bundle.main.resourcePath!
        
        // Carregar as imagens dentro da pasta content, nossa variável será uma array de Strings
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        // Passamos por todos os arquivos dentro da nossa array items
        for item in items {
            if item.hasPrefix("nsll"){
                // carregar os items que começam com nssl
                item
            }
        }
    }
}

