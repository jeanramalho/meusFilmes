//
//  HomeView.swift
//  meusFilmes
//
//  Created by Jean Ramalho on 25/02/25.
//
import Foundation
import UIKit

class HomeView: UIView {
    
    lazy var homeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Meus Filmes".uppercased()
        label.font = UIFont.boldSystemFont(ofSize: 40)
        return label
    }()
    
    lazy var filmesTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(FilmesTableViewCell.self, forCellReuseIdentifier: FilmesTableViewCell.identifier)
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        backgroundColor = .white
        
        setHirerachy()
        setConstraints()
    }
    
    private func setHirerachy(){
        addSubview(homeTitleLabel)
        addSubview(filmesTableView)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            homeTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 12),
            homeTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            
            filmesTableView.topAnchor.constraint(equalTo: homeTitleLabel.bottomAnchor, constant: 8),
            filmesTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            filmesTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            filmesTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
