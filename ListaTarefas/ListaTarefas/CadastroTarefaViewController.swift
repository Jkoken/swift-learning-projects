//
//  CadastroTarefaViewController.swift
//  ListaTarefas
//
//  Created by Jackson Wandekoken on 09/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class CadastroTarefaViewController: UIViewController {

    
    @IBOutlet weak var tarefaCampo: UITextField!
    
    @IBAction func adicionarTarefa(_ sender: Any) {
    
        if let textoDigitado = tarefaCampo.text{
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(tarefa: textoDigitado)
            tarefaCampo.text = "" //linha utilizada para que, toda vez que o usuário adicionar uma tarefa o campo fique em branco novamente.
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
