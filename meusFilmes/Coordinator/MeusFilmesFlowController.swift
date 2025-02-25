//
//  MeusFilmesFlowController.swift
//  meusFilmes
//
//  Created by Jean Ramalho on 25/02/25.
//
import Foundation
import UIKit

class MeusFilmesFlowController {
    
    private var navigationController: UINavigationController?
    
    public init(){
        
    }
    
    func start() -> UINavigationController {
        
        let contentView = SplashView()
        let startViewController = SplashViewController(contentView: contentView)
        
        self.navigationController =  UINavigationController(rootViewController: startViewController)
        
        return navigationController ?? UINavigationController()
    }
}
