//
//  FirebaseLabApp.swift
//  FirebaseLab
//
//  Created by Gaming Lab on 1/12/24.
//

import SwiftUI
import Firebase

@main
struct FirebaseLabApp: App {
    @StateObject var dataManager = DataManager()
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
           ListView()
                .environmentObject(dataManager)
            
        }
    }
}

/*
 import SwiftUI
 import FirebaseCore

 class AppDelegate: NSObject, UIApplicationDelegate {
   func application(_ application: UIApplication,
                    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
     FirebaseApp.configure()
     return true
   }
 }

 @main
 struct YourApp: App {
   // register app delegate for Firebase setup
   @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

   var body: some Scene {
     WindowGroup {
       NavigationView {
         ContentView()
       }
     }
   }
 }
 
 */
