//
//  FavoriteScreen.swift
//  SUI
//
//  Created by Артем Романов on 09.09.2022.
//

import SwiftUI


struct FavoriteScreen: View {
    
    @StateObject var viewModel: FavoriteViewModel = .init()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.films) {
                    NavigationLink($0.name, destination: FavoriteDetailScreen(film: $0))
                }
            }
            .navigationTitle(TabBarItemKind.favorite.title)
        }
    }
}

struct FavoriteScreen_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteScreen()
    }
}
