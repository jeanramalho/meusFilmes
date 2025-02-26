//
//  HomeViewConroller.swift
//  meusFilmes
//
//  Created by Jean Ramalho on 25/02/25.
//
import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    private let coordinator: MeusFilmesFlowController
    
    let contentView: HomeView
    
    var filmes: [Filme] = []
    
    init(contentView: HomeView, coordinator: MeusFilmesFlowController) {
        self.contentView = contentView
        self.coordinator = coordinator
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
        
        contentView.filmesTableView.delegate = self
        contentView.filmesTableView.dataSource = self
        
        populaFilmes()
        setHierarchy()
        setConstraints()
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
    
    private func populaFilmes(){
        
        filmes.append(Filme(titulo: "007 - Spectro", descricao: "Descrição Filme 1", imagem: "filme1"))
        filmes.append(Filme(titulo: "Star Wars", descricao: "Descrição Filme 2", imagem: "filme2"))
        filmes.append(Filme(titulo: "Impacto Mortal", descricao: "Descrição Filme 3", imagem: "filme3"))
        filmes.append(Filme(titulo: "DeadPool", descricao: "Descrição Filme 4", imagem: "filme4"))
        filmes.append(Filme(titulo: "O Regresso", descricao: "Descrição Filme 5", imagem: "filme5"))
        filmes.append(Filme(titulo: "A Herdeira", descricao: "Descrição Filme 6", imagem: "filme6"))
        filmes.append(Filme(titulo: "Caçadores de Emoção", descricao: "Descrição Filme 7", imagem: "filme7"))
        filmes.append(Filme(titulo: "O Regresso do Rei", descricao: "Descrição Filme 8", imagem: "filme8"))
        filmes.append(Filme(titulo: "Tarzan", descricao: "Descrição Filme 9", imagem: "filme9"))
        filmes.append(Filme(titulo: "HardCore", descricao: "Descrição Filme 10", imagem: "filme10"))

    }
}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FilmesTableViewCell.identifier, for: indexPath) as? FilmesTableViewCell else {return UITableViewCell() }
        
       
        cell.capaFilmeImageView.image = filmes[indexPath.row].imagem
        cell.tituloFilmeLabel.text = filmes[indexPath.row].titulo
        cell.descricaoLabel.text = filmes[indexPath.row].descricao
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detalheView = DetalhesView()
        coordinator.showDetalhesView()
    }
    
}
