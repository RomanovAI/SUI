//
//  ContentView.swift
//  SUI
//
//  Created by Артем Романов on 09.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var initialItem = TabBarItemKind.reports
    
    var body: some View {
        TabView(selection: $initialItem) {
            ReportsScreen(tabItemKind: $initialItem)
                .tag(TabBarItemKind.reports)
                .tabItem {
                    Label(TabBarItemKind.reports.title,
                          image: TabBarItemKind.reports.icon)
                }
            
            FavoriteScreen()
                .tag(TabBarItemKind.favorite)
                .tabItem {
                    Label(TabBarItemKind.favorite.title,
                          image: TabBarItemKind.favorite.icon)
                }
            
            ProfileScreen()
                .tag(TabBarItemKind.profile)
                .badge("!")
                .tabItem {
                    Label(TabBarItemKind.profile.title,
                          image: TabBarItemKind.profile.icon)
                    
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
            ContentView()
                .previewDevice("iPhone 8 Plus")
            ContentView()
                .previewDevice("iPhone 8 Plus")
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
