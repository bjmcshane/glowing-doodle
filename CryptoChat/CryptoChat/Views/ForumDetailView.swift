import SwiftUI

struct ForumDetailView: View {
    @EnvironmentObject var forumData: ForumDataManager
    let forum: Forum
    @State private var showingNewPost = false
    
    var body: some View {
        List {
            ForEach(forumData.posts[forum.id] ?? []) { post in
                NavigationLink(destination: PostDetailView(post: post)) {
                    VStack(alignment: .leading) {
                        Text(post.title)
                            .font(.headline)
                        Text("By \(post.author.username) • \(post.createdAt.formatted())")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
        .navigationTitle(forum.name)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { showingNewPost = true }) {
                    Image(systemName: "square.and.pencil")
                }
            }
        }
        .sheet(isPresented: $showingNewPost) {
            NewPostView(forum: forum)
        }
    }
} 