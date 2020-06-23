//
//  ViewController.swift
//  AppMinhasAnotaçõesAula66
//
//  Created by Jackson Wandekoken on 08/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var textoInserido: UITextView!
    
    
    let chave = "minhaChave"
    
    @IBAction func botaoInserir(_ sender: Any) {
        
        if let texto = textoInserido.text { //Agora o botão já serve para inserir o texto inserido na variável "texto"
            UserDefaults.standard.set(texto, forKey: chave)
        }
    }
    
    func recuperarAnotacao() -> String{
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave){
            return textoRecuperado as! String //Para transformar em String.
        }
        return "Nada Inserido"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            textoInserido.text = recuperarAnotacao()
    }


}

