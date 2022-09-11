//
//  ActivityIndicatorView.swift
//  SUI
//
//  Created by Артем Романов on 11.09.2022.
//

import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
  
    typealias UIViewType = UIActivityIndicatorView
    
    let isAnimated: Bool
    
    func makeUIView(context: Self.Context) -> UIViewType {
        UIActivityIndicatorView(style: .large)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        isAnimated && !uiView.isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
