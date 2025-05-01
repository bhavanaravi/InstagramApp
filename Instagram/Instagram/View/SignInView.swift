//
//  SignInView.swift
//  InstagramApp
//
//  Created by Encora on 21/04/25.
//

import SwiftUI

struct SignInView: View {
    
    @State var mail: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Image(systemName: "camera")
                    .font(.system(size: 60, weight: .black, design: .monospaced))
                VStack(alignment: .center) {
                    Text("Welcome Back").font(.system(size: 32, weight: .heavy))
                    
                    Text("Sign In to Continue").font(.system(size: 14, weight: .medium))
                    
                    FormField(icon: "mail", placeholder: "Email", value: $mail)
                    FormField(icon: "mail", placeholder: "Email", value: $password)
                    
                    Button {
                        
                    } label: {
                        Text("Sign In")
                            .font(.title)
                            .modifier(ButtonModifiers())
                    }
                    
                    Button {
                        
                    } label: {
                        Text("New Account")
                        NavigationLink(destination: SignUpView(), label: {
                            Text("Sign Up")
                                .font(.system(size: 20, weight: .semibold))
                                .underline()
                        })
                        
                    }
                    
                    
                }
            }.padding()
        }
    }
}

#Preview {
    SignInView()
}
