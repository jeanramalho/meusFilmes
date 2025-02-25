//
//  SplashView.swift
//  meusFilmes
//
//  Created by Jean Ramalho on 25/02/25.
//
import Foundation
import UIKit

class SplashView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Meus Filmes".uppercased()
        label.font = UIFont.boldSystemFont(ofSize: 34)
        label.textColor = .black
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
        addSubview(titleLabel)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
