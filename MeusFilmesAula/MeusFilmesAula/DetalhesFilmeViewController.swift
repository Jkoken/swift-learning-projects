//
//  DetalhesFilmeViewController.swift
//  MeusFilmesAula
//
//  Created by Jackson Wandekoken on 07/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class DetalhesFilmeViewController: UIViewController{
    
    @IBOutlet weak var filmeImageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    var filme: Filmes!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeImageView.image = filme.imagem
        tituloLabel.text = filme.titulo
        descricaoLabel.text = filme.descricao
        
    }
    
}
