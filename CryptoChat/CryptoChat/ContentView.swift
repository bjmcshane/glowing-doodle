//
//  ContentView.swift
//  CryptoChat
//
//  Created by Brendan McShane on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var forumData: ForumDataManager
    
    var body: some View {
        NavigationView {
            List(forumData.forums) { forum in
                NavigationLink(destination: ForumDetailView(forum: forum)) {
                    VStack(alignment: .leading) {
                        Text(forum.name)
                            .font(.headline)
                        Text(forum.description)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Forums")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: UserProfileView()) {
                        Image(systemName: "person.circle")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(ForumDataManager())
}
