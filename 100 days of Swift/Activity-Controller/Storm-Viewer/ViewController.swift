//
//  ViewController.swift
//  Storm-Viewer
//
//  Created by Felipe Augusto Correia on 22/05/23.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Storm Viewer"
        
        // Esta tela deve ter um título grande
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Com este tipo, podemos trabalhar com arquivos
        let fm = FileManager.default
        
        // Bundle -> contém nosso projeto compilado e nossos assets
        let path = Bundle.main.resourcePath!
        print(path)
        
        // Carregar as imagens dentro da pasta content, nossa variável será uma array de Strings
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        // Passamos por todos os arquivos dentro da nossa array items
        for item in items {
            if item.hasPrefix("nssl"){
                // carregar os items que começam com nssl e coloca-los dentro da nossa array.
                pictures.append(item)
            }
            pictures.sort()
        }
        print(pictures)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]
            vc.selectedPictureNumber = indexPath.row + 1
            vc.totalPictures = pictures.count
//            vc.title = "Imagem \(indexPath.row + 1) de \(pictures.count)"
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}


