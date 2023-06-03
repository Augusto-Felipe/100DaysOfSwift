//
//  ViewController.swift
//  GuessTheFlag
//
//  Created by Felipe Augusto Correia on 28/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries: [String] = []
    var score: Int = 0
    var randomNumber: Int?
    var correctAnswer: Int = 0
    var answeredQuestions: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "france","germany",
                      "ireland", "italy","monaco",
                      "nigeria","poland","russia",
                      "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        askQuestion()
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        // Altera a ordem da array para uma ordem randômica
        countries.shuffle()
        
        // Gera um numero aleatório entre 0 e 2
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        // Lógica -> estamos pegando apenas os 3 primeiros itens da lista, demos um shuffle para sempre troca-los e em seguida geramos um numero randômico entre 0 e 2
        title = "\(countries[correctAnswer].uppercased()) Score = \(score)"
    }
    
    @objc func shareTapped() {
//        let vc = UIActivityViewController(activityItems: [String(score)], applicationActivities: [])
//        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
//        present(vc, animated: true)
        
        let vc = UIAlertController(title: "Score", message: "Seu score é \(score)", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        vc.addAction(action)
        present(vc, animated: true)
    }
    
    func resetQuiz(action: UIAlertAction! = nil) {
        score = 0
        answeredQuestions = 0
        askQuestion()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        button1.tag = 0
        button2.tag = 1
        button3.tag = 2
        
        if answeredQuestions == 3 {
            answeredQuestions += 1
            let ac = UIAlertController(title: "End Quiz", message: "Your score is \(score)", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: resetQuiz))
            present(ac, animated: true)
        } else {
            if sender.tag == correctAnswer {
                score += 1
                answeredQuestions += 1
                title = "Correct"
                
                let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
                present(ac, animated: true)
                
            } else {
                score -= 1
                answeredQuestions += 1
                title = "Incorrect"
                
                let ac = UIAlertController(title: title, message: "Essa é a bandeira da \(countries[sender.tag].uppercased())", preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
                present(ac, animated: true)
                
            }
        
        }
        
    }
    
}

