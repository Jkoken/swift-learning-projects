//
//  ViewController.swift
//  SalvarDados
//
//  Created by Jackson Wandekoken on 08/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       /* UserDefaults.standard.set("Azul", forKey: "corfundo") //Aqui a cor "Azul" foi inserida com o parâmetro "corFundo"
        let texto = UserDefaults.standard.object(forKey: "corFundo") //Aqui a cor está sendo requisitada
        print(texto) */
        
        //var comidas: [String] = ["Lasanha","Pizza","Torta"]
        //UserDefaults.standard.set(comidas, forKey: "Comidas") //Inserindo os dados da variavel "comidas" no dispositivo.A chave "forKey" é utilizada para RECUPERAR os valores.
        
        let comidas = UserDefaults.standard.object(forKey: "Comidas") //Os itens inseridos estão sendo requisitados.
        print(comidas)
        
        UserDefaults.standard.removeObject(forKey: "Comidas") //Remove o valor que está inserido na chave.
    
    }


}

