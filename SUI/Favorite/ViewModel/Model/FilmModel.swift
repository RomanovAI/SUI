//
//  FilmModel.swift
//  SUI
//
//  Created by Артем Романов on 11.09.2022.
//

import Foundation

class FilmModel: Identifiable {
    
    var id: String { name }
    let name: String
    var isSelected: Bool
    
    init(name: String, isSelected: Bool = false) {
        self.name = name
        self.isSelected = isSelected
    }
}
