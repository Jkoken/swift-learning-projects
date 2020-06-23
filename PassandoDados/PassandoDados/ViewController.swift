//
//  ViewController.swift
//  PassandoDados
//
//  Created by Jackson Wandekoken on 03/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nomeCampo: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarDados"{
            let viewControllerDestino = segue.destination as! DetalhesViewController
            viewControllerDestino.textoRecebido = nomeCampo.text!
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

