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
    // @Query private var items: [Item]
    
    @Query private var users: [User]
    
    

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
                Button("Add User"){
                    addUser()
                }
            }
            
            List {
                ForEach (users) { user in
                    HStack {
                        Text(user.email)
                        Spacer()
                        Button {
                            updateUser()
                        } label: {
                            Image(systemName: "arrow.triange.2.circlepath")
                        }
                    }
                    
                }
                .onDelete { indexes in
                    for index in indexes {
                        deleteUser(users[index])
                    }
                }
            }
            
            Spacer()
        }
        .padding()
        
    }
    
    func addUser() {
        let user = User(
            name: "Brendan",
            email: "brendanmcshane4@gmail.com"
        )
        
        modelContext.insert(user)
    }
    
    func deleteUser(_ user: User) {
        modelContext.delete(user)
    }
    
    func shareProfile() {
        print("world")
    }
    
    func updateUser(_ user: User) {
        user.name = "Jacob Mozer"
        try? modelContext.save()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
