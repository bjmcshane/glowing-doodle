import SwiftUI

struct PostDetailView: View {
    let post: Post
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text(post.title)
                    .font(.title)
                    .padding(.bottom, 4)
                
                Text("By \(post.author.username)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Divider()
                
                Text(post.content)
                    .font(.body)
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
} 