//
//  ViewController.swift
//  TableViewController
//
//  Created by Jackson Wandekoken on 04/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var dados: [String] = ["Lasanha", "Pizza", "Salada"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int { //Herdado de UITableViewController
        return 1 //um somente porque por enquanto não precisa utilizar mais de uma seção, pois iremos mexer apenas com itens salgados.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return dados.count //assim ele conta a quantidade de itens que tem dentro do array, para retornar a quantidade de linhas.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let CelulaReuso = "CelulaReuso" //Usando o Identifier (nesse caso celulaReuso, que foi inserido no main.storyboard como identifier da View Cell) o dequeue vai decidir se, baseado no identificador de célula, ele vai criar uma nova célula ou vai reutilizar
        let celula = tableView.dequeueReusableCell(withIdentifier: CelulaReuso, for: indexPath) //monta a célula propriamente dita. Ele vai retornar, montar cada uma das linhas, cada uma das células.
            //dequeueReusableCell decide se precisa criar uma nova cell ou se pode utilizar a célula já criada
        celula.textLabel?.text = dados [indexPath.row] //O indexPath.row recupera a linha que esta sendo executada, começando pelo indice 0.  //textLabel é "propriedade" da tableview
        
        return celula
    }

}

