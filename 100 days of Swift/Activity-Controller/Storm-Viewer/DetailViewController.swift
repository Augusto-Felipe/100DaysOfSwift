//
//  DetailViewController.swift
//  Storm-Viewer
//
//  Created by Felipe Augusto Correia on 23/05/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var placeImageView: UIImageView!
    
    var selectedImage: String?
    var selectedPictureNumber: Int?
    var totalPictures: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Propriedade Title
        // Aqui não precisamos fazer unwrap pois estamos atribuindo um string opcional na outra.
        title = "Imagem \(selectedPictureNumber ?? 0) de \(totalPictures ?? 0)"
        
        // Essa tela não deve ter um título grande
        navigationItem.largeTitleDisplayMode = .never
        
        // Bar Item -> adiciona um botão na nossa UINavigationBar ao lado direito que vai executar uma ação ao ser clicado.
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        // Content Mode
        placeImageView.contentMode = .scaleAspectFill
            
        // O jeito mais simples de fazer o unwrap é criar uma nova variável
        if let imageToLoad = selectedImage {
            placeImageView.image = UIImage(named: imageToLoad)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    @objc func shareTapped() {
        // Não esqueça de permitir o usuário para salvar fotos na biblioteca no info.plist.
        
        // Salvamos a imagem que foi clicada para passar no parâmetro abaixo.
        guard let image = placeImageView.image?.jpegData(compressionQuality: 0.8)
        else {
            print("Image not found.")
            return
        }
        
        guard let imageName = selectedImage
        else {
            print("Image not found.")
            return
        }
        
        // Uma tela vai subir com a imagem salva para que possamos salva-lá.
        // O UIActivityViewController nos permite compartilhar dados com outros apps e devices, nesse caso estamos criando um UIActivityViewController e passando nossa imagem como parâmetro.
        let vc = UIActivityViewController(activityItems: [image, imageName], applicationActivities: [])
        
        // Aqui estamos dizendo que nossa tela de compartilhamento vai aparecer a partir do momento que clicarmos no nosso right bar button item.
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        
        present(vc, animated: true)
    }
}
