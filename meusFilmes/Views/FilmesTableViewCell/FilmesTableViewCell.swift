//
//  FilmesTableViewCell.swift
//  meusFilmes
//
//  Created by Jean Ramalho on 25/02/25.
//
import Foundation
import UIKit

class FilmesTableViewCell: UITableViewCell {
    
    lazy var capaFilmeImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 8
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    lazy var tituloFilmeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .black
        return label
    }()
    
    lazy var descricaoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .darkGray
        return label
    }()
    
    static let identifier = "FilmesTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        
        setHierarchy()
        setConstaints()
    }
    
    private func setHierarchy(){
        addSubview(capaFilmeImageView)
        addSubview(tituloFilmeLabel)
        addSubview(descricaoLabel)
    }
    
    private func setConstaints(){
        NSLayoutConstraint.activate([
            capaFilmeImageView.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            capaFilmeImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24),
            capaFilmeImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            capaFilmeImageView.heightAnchor.constraint(equalToConstant: 150),
            capaFilmeImageView.widthAnchor.constraint(equalToConstant: 110),
            
            tituloFilmeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            tituloFilmeLabel.leadingAnchor.constraint(equalTo: capaFilmeImageView.trailingAnchor, constant: 18),
            
            descricaoLabel.topAnchor.constraint(equalTo: tituloFilmeLabel.bottomAnchor, constant: 12),
            descricaoLabel.leadingAnchor.constraint(equalTo: capaFilmeImageView.trailingAnchor, constant: 18),
            
        ])
    }
}
