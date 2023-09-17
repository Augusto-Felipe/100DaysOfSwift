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
    var progressView: UIProgressView?
    var websites = ["apple.com", "hackingwithswift.com"]
    
    override func loadView() {
        webView = WKWebView()
        webView?.navigationDelegate = self
        self.view = webView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
        navigationController?.navigationBar.barTintColor = .white
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView?.reload))
        progressView = UIProgressView(progressViewStyle: .default)
        progressView?.sizeToFit()
        let progressButton = UIBarButtonItem(customView: progressView ?? UIProgressView())
        toolbarItems = [progressButton, space, refresh]
        navigationController?.isToolbarHidden = false
        webView?.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
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
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            progressView?.progress = Float(webView?.estimatedProgress ?? Double())
        }
    }
}

extension ViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
}
