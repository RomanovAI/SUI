//
//  FavoriteViewModel.swift
//  SUI
//
//  Created by Артем Романов on 11.09.2022.
//

import Foundation


class FavoriteViewModel: ObservableObject {
    
    @Published var selectedFilm: FilmModel?
    @Published var films: [FilmModel]
    @Published var showSelectedFilm = false
    
    init() {
        self.films = [
            FilmModel(name: "Terminator"),
            FilmModel(name: "Assassin's Creed"),
            FilmModel(name: "Predator"),
            FilmModel(name: "Judge Dredd"),
            FilmModel(name: "Underworld"),
            FilmModel(name: "Deadpool")
        ]
    }
    
}
