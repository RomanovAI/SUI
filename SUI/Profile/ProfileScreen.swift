//
//  ProfileScreen.swift
//  SUI
//
//  Created by Артем Романов on 09.09.2022.
//

import SwiftUI

struct ProfileScreen: View {
    
    @State private var showingModal = false
    
    var body: some View {
        NavigationView {
            Button {
                showingModal.toggle()
            } label: {
                Text("Modal open")
            }
            .sheet(isPresented: $showingModal) {
                ModalView(showingModal: $showingModal)
            }
            .navigationTitle(TabBarItemKind.profile.title)
        }
    }
    
}


struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
