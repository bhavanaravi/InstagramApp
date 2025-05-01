//
//  FormField.swift
//  InstagramApp
//
//  Created by Encora on 21/04/25.
//

import SwiftUI

struct FormField: View {
    
    var icon: String = ""
    var isSecure: Bool = false
    var placeholder: String = ""
    @Binding var value: String
    
    var body: some View {
        Group {
            HStack {
                Image(systemName: icon)
                    .padding()
                Group{
                    if isSecure {
                        SecureField(placeholder, text: $value)
                    } else {
                        TextField(placeholder, text: $value)
                    }
                }.font(.caption)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
            }
        }
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 5))
        .padding()
    }
}

#Preview {
    FormField( value: .constant(""))
}
