//
//  CadastroTarefaViewController.swift
//  MinhaListaDeTarefas
//
//  Created by Jackson Wandekoken on 11/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class CadastroTarefaViewController: UIViewController { //Classe criada para o CADASTRO de Tarefas

  
    @IBOutlet weak var taskText: UITextField!
    
    @IBAction func insertTask(_ sender: Any) {
        if let textInserted = taskText.text { //Verificabilidade da escrita. Se teve ou não algo escrito
            let task = TarefaUserDefaults() //Faço a nova variável taskA puxar as propriedades da class TarefaUserDefaults
            task.add(task: textInserted) //Utilizo a função do TarefaUserDefaults de adicionar, para inserir a task no programa.
            taskText.text = "" //Usado para fazer o campo de digitação ficar vazio após a inserção da task
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true) //Fazendo isso, toda vez que clicar fora de local de digitação o teclado desaparecerá.
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
