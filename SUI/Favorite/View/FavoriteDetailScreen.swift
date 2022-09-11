//
//  Detailscreen.swift
//  SUI
//
//  Created by Артем Романов on 11.09.2022.
//

import SwiftUI

struct FavoriteDetailScreen: View {
    
    var film: FilmModel
    
    
    var body: some View {
        Text(film.name)
    }
}

struct Detailscreen_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteDetailScreen(film: FilmModel(name: "Equilibrium"))
    }
}
