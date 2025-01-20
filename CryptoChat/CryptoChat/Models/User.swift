import Foundation

struct User: Identifiable, Codable {
    let id: UUID
    var username: String
    var joinDate: Date
    
    init(id: UUID = UUID(), username: String) {
        self.id = id
        self.username = username
        self.joinDate = Date()
    }
} 