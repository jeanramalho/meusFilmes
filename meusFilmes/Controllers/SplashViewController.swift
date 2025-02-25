//
//  SplashViewController.swift
//  meusFilmes
//
//  Created by Jean Ramalho on 25/02/25.
//
import Foundation
import UIKit

class SplashViewController: UIViewController {
    
    let contentView: SplashView
    let coordinator: MeusFilmesCoordinatorProtocol?
    
    init(contentView: SplashView, coordinator: MeusFilmesCoordinatorProtocol ) {
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
        
        startTimer()
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
    
    private func startTimer(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {[weak self] in
            self?.coordinator?.showHomeView()
        }
    }
    
}
