//
//  ViewController.swift
//  MeusFilmesAula
//
//  Created by Jackson Wandekoken on 07/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filmes] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filmes
        
        filme = Filmes(titulo: "007 - Spectre", descricao: "Descrição 1", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append(filme)
        
        filme = Filmes(titulo: "Star Wars", descricao: "Descrição 2", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        
        filme = Filmes(titulo: "Impacto Mortal", descricao: "Descrição 1", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append(filme)
        
        filme = Filmes(titulo: "Deadpool", descricao: "Descrição 2", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append(filme)
        
        filme = Filmes(titulo: "O Regresso", descricao: "Descrição 1", imagem: #imageLiteral(resourceName: "filme5"))
        filmes.append(filme)
        
        filme = Filmes(titulo: "A Herdeira", descricao: "Descrição 2", imagem: #imageLiteral(resourceName: "filme6"))
        filmes.append(filme)
        
        filme = Filmes(titulo: "Caçadores de Emoção", descricao: "Descrição 1", imagem: #imageLiteral(resourceName: "filme7"))
        filmes.append(filme)
        
        filme = Filmes(titulo: "Regresso do Mal", descricao: "Descrição 2", imagem: #imageLiteral(resourceName: "filme8"))
        filmes.append(filme)
        
        filme = Filmes(titulo: "Tarzan", descricao: "Descrição 1", imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append(filme)
        
        filme = Filmes(titulo: "Hardcore", descricao: "Descrição 2", imagem: #imageLiteral(resourceName: "filme10"))
        filmes.append(filme)
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme = filmes[indexPath.row]
        let CelulaReuso = "CelulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: CelulaReuso, for: indexPath) as! FilmeCelula
        
        //Inserção manual
        /* celula.textLabel?.text = filme.titulo
         celula.imageView?.image = filme.imagem */
        
        //Celula customizada (tirada do método criado somente para isso FilmeCelula puxado com o "as!"
        celula.filmeImageView.image = filme.imagem
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
        
        celula.filmeImageView.layer.cornerRadius = 42 //para deixar redondo é só colocar metade do tamanho da imagem
        celula.filmeImageView.clipsToBounds = true //serve para cortar tudo o que estiver fora das bordas do layer inseridas acima.
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheFilme"{
            
            if let indexPath = tableView.indexPathForSelectedRow{
                
                let filmeSelecionado = self.filmes[indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
                
            }
            
        }
    }
    
    
}

