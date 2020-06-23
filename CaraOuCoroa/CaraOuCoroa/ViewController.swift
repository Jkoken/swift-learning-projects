//
//  ViewController.swift
//  CaraOuCoroa
//
//  Created by Jackson Wandekoken on 03/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gerarSorteio"{
            let vcDestino = segue.destination as! DetalhesViewController
            vcDestino.randomNumber = Int(arc4random_uniform(2))
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

