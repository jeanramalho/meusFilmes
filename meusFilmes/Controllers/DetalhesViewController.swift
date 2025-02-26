//
//  DetalhesViewController.swift
//  meusFilmes
//
//  Created by Jean Ramalho on 26/02/25.
//
import Foundation
import UIKit

class DetalhesViewController: UIViewController {
    
    let contentView: DetalhesView
    let filme: Filme
    
    init(contentView: DetalhesView, filme: Filme) {
        self.contentView = contentView
        self.filme = filme
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        configureContentView()
        setHierarchy()
        setConstraints()
    }
    
    func configureContentView(){
        contentView.filmeImageView.image = filme.imagem
        contentView.nomeFilmeLabel.text = filme.titulo
        contentView.descricaoFilmeLabel.text = filme.descricao
    }
    
    private func setHierarchy(){
        view.addSubview(contentView)
    }
    
    private func setConstraints(){
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
