//
//  CryptoChatApp.swift
//  CryptoChat
//
//  Created by Brendan McShane on 1/20/25.
//

import SwiftUI

@main
struct CryptoChatApp: App {
    @StateObject private var forumData = ForumDataManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(forumData)
        }
    }
}
