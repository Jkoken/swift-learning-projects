//
//  ViewController.swift
//  MinhasAnotacoesSegundaTentativa
//
//  Created by Jackson Wandekoken on 08/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textoEntrada: UITextView!
    
    let chave1 = "Anotações"
    
    @IBAction func salvarTexto(_ sender: Any) {
        
        if let texto = textoEntrada.text {
            UserDefaults.standard.set(texto, forKey: chave1)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    func recuperarTextoEscrito() -> String{
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave1){
        return textoRecuperado as! String
        }
        return ""
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textoEntrada.text = recuperarTextoEscrito()
    }


}

