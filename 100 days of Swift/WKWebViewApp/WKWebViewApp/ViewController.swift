//
//  ViewController.swift
//  WKWebViewApp
//
//  Created by Felipe Augusto Correia on 03/06/23.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    var webView: WKWebView?
    
    override func loadView() {
        webView = WKWebView()
        webView?.navigationDelegate = self
        self.view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
    }
    
    @objc func openTapped() {
        let ac = UIAlertController(title: "Open Page", message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "apple.com", style: .default, handler: openPage))
        ac.addAction(UIAlertAction(title: "hackingwithswift.com", style: .default, handler: openPage))
        ac.addAction(UIAlertAction(title: "cancel", style: .cancel))
        ac.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(ac, animated: true)
    }
    
    func openPage(action: UIAlertAction) {
        
        // Pegando o title da nossa action
        guard let actionTitle = action.title else { return }
        
        // Criar um url com o endereço do site, pegando o título da action e concatenado com https://
        guard let url = URL(string: "https://www.\(actionTitle)") else { return }
        
        // Colocamos nossa string em um URLRequest
        webView?.load(URLRequest(url: url))
        
        // Nos permite usar o swipe na tela
        webView?.allowsBackForwardNavigationGestures = true
        
    }
}

extension ViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
}
