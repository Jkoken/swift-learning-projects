//
//  Filmes.swift
//  MeusFilmesAula
//
//  Created by Jackson Wandekoken on 07/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit //kit padrão para trabalhar com interface

class Filmes{
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    
    init(titulo: String, descricao: String, imagem: UIImage){
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}
