//
//  Filme.swift
//  meusFilmes
//
//  Created by Jean Ramalho on 25/02/25.
//
import Foundation
import UIKit

class Filme {
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    
    init(titulo: String, descricao: String, imagem: String) {
        self.titulo = titulo
        self.descricao =  descricao
        self.imagem = UIImage(named: imagem)
    }
}

