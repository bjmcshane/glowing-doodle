import Foundation

class ForumDataManager: ObservableObject {
    @Published var forums: [Forum] = []
    @Published var currentUser: User?
    @Published var posts: [UUID: [Post]] = [:] // Forum ID : Posts
    
    init() {
        // Sample data
        let sampleForums = [
            Forum(name: "General Discussion", description: "General topics and discussions"),
            Forum(name: "Technology", description: "Tech news and discussions"),
            Forum(name: "Gaming", description: "Gaming related discussions")
        ]
        
        forums = sampleForums
        currentUser = User(username: "Guest")
        
        // Add some sample posts
        for forum in forums {
            posts[forum.id] = [
                Post(title: "Welcome to \(forum.name)", 
                     content: "This is a welcome post for the \(forum.name) forum.",
                     author: currentUser!)
            ]
        }
    }
} 