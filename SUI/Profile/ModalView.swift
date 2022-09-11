//
//  ModalView.swift
//  SUI
//
//  Created by Артем Романов on 11.09.2022.
//

import SwiftUI

struct ModalView: View {
    
    @Binding var showingModal: Bool
    
    var body: some View {
        VStack {
            Text("ModalView")
            Button {
                showingModal.toggle()
            } label: {
                Text("Modal dismiss")
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(showingModal: .constant(true))
    }
}
