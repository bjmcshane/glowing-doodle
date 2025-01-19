//
//  War_Card_GameApp.swift
//  War Card Game
//
//  Created by Brendan McShane on 1/10/25.
//

import SwiftUI
import SwiftData
//import FirebaseApp

/*
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        return true
    }
}
*/



@main
struct War_Card_GameApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
