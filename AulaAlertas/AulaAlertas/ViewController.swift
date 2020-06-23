//
//  ViewController.swift
//  AulaAlertas
//
//  Created by Jackson Wandekoken on 05/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func alertaBotao(_ sender: Any) {
        
        let alerta = UIAlertController (title: "Adicionar Contato", message: "Deseja adicionar um contato?", preferredStyle: .actionSheet) //no lugar do .alert pode ser utilizado o .actionSheet, que mostra um alerta de baixo pra cima, que fica próximo à base do app, ao invés de simplesmente aparecer no meio da tela como no caso do .alert.
        let confirmar = UIAlertAction (title: "Confirmar", style: .default, handler: nil)
            print("Botão pressionar Pressionado!")
        let cancelar = UIAlertAction (title: "Cancelar", style: .cancel, handler: nil) // no lugar no .cancel, pode ser utilizado o .destructive, que mostra um botão vermelho (padrão do iOS) que basicamente mostra para o usuário que se ele clicar ele estará deletando ou cancelando de fato algo e não conseguirá voltar atrás.
        alerta.addAction(confirmar)
        alerta.addAction(cancelar)
        present(alerta, animated: true, completion: nil)
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

