//
//  DetailViewController.swift
//  Challenge1
//
//  Created by Felipe Augusto Correia on 02/06/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var countryFlagImageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        guard let image = selectedImage else { return }
        let components = image.components(separatedBy: "@")
        let nameWithoutExtension = components[0]
        title = "\(nameWithoutExtension.uppercased())"
        
        countryFlagImageView.image = UIImage(named: image)
    }
    
    @objc func shareTapped() {
        
        guard let imageSelected = selectedImage else { return }
        let components = imageSelected.components(separatedBy: "@")
        let nameWithoutExtension = components[0]
        
        if let image = UIImage(named: imageSelected) {
            if let imageData = image.pngData() { // Use image.jpegData(compressionQuality:) se for uma imagem JPEG
                // O objeto Data da imagem foi criado com sucesso
                // Use a variável "imageData" do tipo Data
                let vc = UIActivityViewController(activityItems: [imageData, nameWithoutExtension], applicationActivities: [])
                vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
                present(vc, animated: true)
                
            } else {
                // Falha ao criar o objeto Data da imagem
                // Lide com o erro
            }
        } else {
            // Falha ao carregar a imagem
            // Lide com o erro
        }
        
    }

}
