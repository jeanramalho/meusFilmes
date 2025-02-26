//
//  DetalhesView.swift
//  meusFilmes
//
//  Created by Jean Ramalho on 26/02/25.
//
import Foundation
import UIKit

class DetalhesView: UIView {
    
    lazy var filmeImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.layer.cornerRadius = 16
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    lazy var nomeFilmeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 48)
        label.textColor = .black
        return label
    }()
    
    lazy var descricaoFilmeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .darkGray
        return label
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
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy(){
        addSubview(filmeImageView)
        addSubview(nomeFilmeLabel)
        addSubview(descricaoFilmeLabel)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            filmeImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 12),
            filmeImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            filmeImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            filmeImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6),
            
            nomeFilmeLabel.topAnchor.constraint(equalTo: filmeImageView.bottomAnchor, constant: 18),
            nomeFilmeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            
            descricaoFilmeLabel.topAnchor.constraint(equalTo: nomeFilmeLabel.bottomAnchor, constant: 12),
            descricaoFilmeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
        ])
    }
}
