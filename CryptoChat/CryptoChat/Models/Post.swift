import Foundation

struct Post: Identifiable, Codable {
    let id: UUID
    var title: String
    var content: String
    var author: User
    var createdAt: Date
    
    init(id: UUID = UUID(), title: String, content: String, author: User) {
        self.id = id
        self.title = title
        self.content = content
        self.author = author
        self.createdAt = Date()
    }
} 