//
//  TarefaUserDefaults.swift
//  ListaTarefas
//
//  Created by Jackson Wandekoken on 09/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class TarefaUserDefaults{
    
    let chave1 = "Lista Tarefas"
    var tarefas: [String] = []
    
    func remover (indice: Int) {
        tarefas = listar()
        tarefas.remove(at: indice)
        UserDefaults.standard.set(tarefas, forKey: chave1)
    }
    
    func salvar (tarefa: String){
        //Recuperar tarefas já salvas, antes de adicionar uma nova (utilizando o método listar () ).
        tarefas = listar()
        
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave1)
        //Nesse caso, foi criado um array de tarefas para que, a toda tarefa inserida no aplicativo ele não sobreescreva a anterior. Podendo assim, inserir quantos tarefa o user quiser.
    }
    
    func listar() -> Array<String> { //O sinal de < >,servem para informar o tipo com o que está ali dentro.
        let dados = UserDefaults.standard.object(forKey: chave1)
        if dados != nil {
            return dados as! Array<String>
        }else{
            return []
        }
    }
    
}
