//
//  TarefaUserDefaults.swift
//  MinhaListaDeTarefas
//
//  Created by Jackson Wandekoken on 11/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

//CLASSE UTILIZADA PARA MANIPULAR A CRIAÇÃO, LISTAGEM E REMOÇÃO DE TAREFAS DA LISTA.
class TarefaUserDefaults{
    
    let key1 = "Key 1"
    var tasks: [String] = []
    
    func remove(index: Int) {
        tasks = list() //Usado para listar as tarefas já salvas, antes de REMOVER.
        tasks.remove(at: index) //Informa qual posição do Array será deletada
        UserDefaults.standard.removeObject(forKey: key1) //Deleta a tarefa do Index informado.
    }
    
    
    func add(task: String) { //Salvar UMA TASK no Array de TASKS
        tasks = list() //Usado para listar as tarefas já salvas, antes de ADICIONAR uma nova
        tasks.append(task) //Adicionando uma Task no Array de Taks
        UserDefaults.standard.set(tasks, forKey: key1) //Inserindo a Task adicionada na Lista.
    }
    
    func list() -> Array<String>{
        let data = UserDefaults.standard.object(forKey: key1)
        if data != nil{
            return data as! Array<String>
        }else{
            return []
        }
        
    }
    
    
    
}
