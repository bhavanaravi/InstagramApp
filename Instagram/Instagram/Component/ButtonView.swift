//
//  ButtonView.swift
//  InstagramApp
//
//  Created by Encora on 21/04/25.
//

import SwiftUI



struct ButtonModifiers: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 20)
            .padding()
            .foregroundColor(.white)
            .font(.system(size: 14, weight: .bold))
            .background(Color.black)
            .cornerRadius(8.0)
    }
}

