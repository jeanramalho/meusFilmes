//
//  FilmesTableViewCell.swift
//  meusFilmes
//
//  Created by Jean Ramalho on 25/02/25.
//
import Foundation
import UIKit

class FilmesTableViewCell: UITableViewCell {
    
    static let identifier = "FilmesTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
