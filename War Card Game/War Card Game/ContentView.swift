//
//  ContentView.swift
//  War Card Game
//
//  Created by Brendan McShane on 1/10/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    func editProfile() {
        print("hello")
    }
    func shareProfile() {
        print("world")
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                Spacer()
                VStack {
                    Text("5")
                    Text("Posts")
                }
                VStack {
                    Text("166")
                    Text("Followers")
                }
                VStack {
                    Text("193")
                    Text("Following")
                }
                Spacer()
            }
            Text("Username")
            Text("Biography")
            HStack {
                Button(action: editProfile){
                    Label("Edit Profile", systemImage: "arrow.up")
                }
                Button(action: shareProfile){
                    Label("Share Profile", systemImage: "arrow.up")
                }
            }
            
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
