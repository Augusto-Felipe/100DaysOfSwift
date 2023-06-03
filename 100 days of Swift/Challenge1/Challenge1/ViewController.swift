//
//  ViewController.swift
//  Challenge1
//
//  Created by Felipe Augusto Correia on 02/06/23.
//

import UIKit

class ViewController: UITableViewController {

    @IBOutlet var homeTableView: UITableView!
    @IBOutlet var countryFlagImageView: UIImageView!
    
    var imageList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImages()
    }
    
    func loadImages() {
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasSuffix(".png") {
                imageList.append(item)
            }
        }
        
        print(imageList)
    }
    
}

extension ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = homeTableView.dequeueReusableCell(withIdentifier: "celulaDeReuso", for: indexPath)
        cell.imageView?.image = UIImage(named: imageList[indexPath.row])
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc: DetailViewController? = UIStoryboard(name: "DetailViewController", bundle: nibBundle).instantiateViewController(withIdentifier: "Detail") as? DetailViewController
        vc?.selectedImage = imageList[indexPath.row]
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}

