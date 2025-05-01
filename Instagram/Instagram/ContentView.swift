//
//  ContentView.swift
//  Instagram
//
//  Created by bhavana  on 30/04/25.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self)var appDelegate
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        SignInView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
       
        FirebaseApp.configure()
        return true
    }
}
