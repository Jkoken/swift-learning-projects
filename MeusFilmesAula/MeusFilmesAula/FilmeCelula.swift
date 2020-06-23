//
//  FilmeCelula.swift
//  MeusFilmesAula
//
//  Created by Jackson Wandekoken on 07/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class FilmeCelula: UITableViewCell { //A classe FilmeCelula Herda de UITableViewCell
    
    @IBOutlet weak var filmeImageView: UIImageView!
    
    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var descricaoLabel: UILabel!
}
