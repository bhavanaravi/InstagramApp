//
//  SignUpView.swift
//  InstagramApp
//
//  Created by Encora on 22/04/25.
//

import SwiftUI

struct SignUpView: View {
    
    @State var userName: String = ""
    @State var mail: String = ""
    @State var password: String = ""
    @State var profileImg: Image?
    @State private var pickedImage: Image?
    @State private var showingImagePicker: Bool = false
    @State private var showingActionSheet: Bool = false
    @State private var imageData: Data?
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    

    
    func loadImage() {
        guard let inputImg = pickedImage else { return }
        profileImg = inputImg
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image(systemName: "camera")
                    .font(.system(size: 60, weight: .black, design: .monospaced))
                VStack(alignment: .center) {
                    Text("Welcome").font(.system(size: 32, weight: .heavy))
                    
                    Text("Sign Up to Start").font(.system(size: 14, weight: .medium))
                    
                    Group {
                        if profileImg != nil {
                            profileImg?.resizable()
                                .clipShape(.circle)
                                .frame(width: 100, height: 100)
                                .padding(.top, 20)
                                .onTapGesture {
                                    self.showingActionSheet = true
                                }
                        } else {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .clipShape(.circle)
                                .frame(width: 100, height: 100)
                                .padding(.top, 20)
                                .onTapGesture {
                                    self.showingActionSheet = true
                                }
                        }
                        
                        Group {
                            FormField(icon: "person.fill", placeholder: "UserName", value: $userName)
                            FormField(icon: "mail.fill", placeholder: "Email", value: $mail)
                            FormField(icon: "lock.fill", placeholder: "Email", value: $password)
                        }
                        
                        
                        Button {
                            
                        } label: {
                            Text("Sign Up")
                                .font(.title)
                                .modifier(ButtonModifiers())
                        }
                        
                        
                    }
                }.padding()
            }
        }.sheet(isPresented: $showingImagePicker) {
            loadImage()
        } content: {
            ImagePicker(pickedImage: self.$pickedImage, showImagePicker: self.$showingImagePicker, imageData: self.$imageData)
        }
        .actionSheet(isPresented: $showingActionSheet) {
            ActionSheet(title: Text(""), buttons: [.default(Text("choose photo")){
                self.sourceType = .photoLibrary
                self.showingImagePicker = true
            },
                                                   .default(Text("Take a photo")){
                                                       self.sourceType = .camera
                                                       self.showingImagePicker = true
                                                   },
                                                   .cancel()
                                                  ])
        }
    }

}

#Preview {
    SignUpView()
}
