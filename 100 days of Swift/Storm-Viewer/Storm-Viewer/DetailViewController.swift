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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Aqui não precisamos fazer unwrap pois estamos atribuindo um string opcional na outra.
        title = selectedImage
        // Essa tela não deve ter um título grande
        navigationItem.largeTitleDisplayMode = .never
        
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

}
