//
//  ViewController.swift
//  RandomPhrase
//
//  Created by Jackson Wandekoken on 27/03/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var legendPhrase: UILabel!
    
    @IBAction func newPhrase(_ sender: Any) {
        
        var phrase: [String] = []
        phrase.append("Hoje é Quarta-feira")
        phrase.append("Ontem foi Terça-feira")
        phrase.append("Amanhã é Quinta-feira")
        phrase.append("Amanhã ou sexta tem mangá de One Piece")
        
        
        //nesse caso pode ser utilizado "let" ao invés de "var" pois inserimos um valor para o array (3) que não será alterado.
        let randomNumber = arc4random_uniform(4)
        legendPhrase.text = phrase[Int(randomNumber)]
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

