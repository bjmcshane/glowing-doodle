import SwiftUI

struct NewPostView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var forumData: ForumDataManager
    let forum: Forum
    
    @State private var title = ""
    @State private var content = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $title)
                TextEditor(text: $content)
                    .frame(height: 200)
            }
            .navigationTitle("New Post")
            .navigationBarItems(
                leading: Button("Cancel") { dismiss() },
                trailing: Button("Post") {
                    createPost()
                    dismiss()
                }
                .disabled(title.isEmpty || content.isEmpty)
            )
        }
    }
    
    private func createPost() {
        guard let currentUser = forumData.currentUser else { return }
        let newPost = Post(title: title, content: content, author: currentUser)
        forumData.posts[forum.id, default: []].append(newPost)
    }
} 