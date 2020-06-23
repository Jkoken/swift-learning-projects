//
//  ViewController.swift
//  appSignosAula50
//
//  Created by Jackson Wandekoken on 05/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var signos: [String] = []
    var significadosSignos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sargitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        significadosSignos.append("Signo de Áries")
        significadosSignos.append("Signo de Touro")
        significadosSignos.append("Signo de Gêmeos")
        significadosSignos.append("Signo de Câncer")
        significadosSignos.append("Signo de Leão")
        significadosSignos.append("Signo de Virgem")
        significadosSignos.append("Signo de Libra")
        significadosSignos.append("Signo de Escorpião")
        significadosSignos.append("Signo de Sargitário")
        significadosSignos.append("Signo de Capricórnio")
        significadosSignos.append("Signo de Aquário")
        significadosSignos.append("Signo de Peixes")
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let CelulaReuso = "CelulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: CelulaReuso, for: indexPath)
        celula.textLabel?.text = signos [indexPath.row]
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true) //criado para, ao clicar no item, ele não ficar com a sombra de selecionado. Faz com que ao clicar ele marca e desmarca (efeito) na mesma hora.
        let alertController = UIAlertController(title: "Significado do Sígno", message: significadosSignos[indexPath.row], preferredStyle: .alert)
        let acaoConfirmar = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(acaoConfirmar)
        present(alertController, animated: true, completion: nil)
    }
    
}

