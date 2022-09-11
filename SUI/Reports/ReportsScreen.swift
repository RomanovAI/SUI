//
//  ReportsScreen.swift
//  SUI
//
//  Created by Артем Романов on 09.09.2022.
//

import SwiftUI

struct ReportsScreen: View {
    
    @Binding var tabItemKind: TabBarItemKind
    
    @State private var isAnimated = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button {
                    tabItemKind = .favorite
                } label: {
                    Text("Change tab item")
                }
                .padding(.bottom, 100)
                
                Button {
                    isAnimated.toggle()
                } label: {
                    Text("Show UIKit activity indicator")
                }
                
                ActivityIndicatorView(isAnimated: isAnimated)
            }
            .navigationTitle(TabBarItemKind.reports.title)
        }
    }
}

struct ReportsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ReportsScreen(tabItemKind: .constant(.profile))
    }
}
