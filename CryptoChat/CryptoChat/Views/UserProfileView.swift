import SwiftUI

struct UserProfileView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            
            Text("User Profile")
                .font(.title)
            
            // Add more profile information here
            List {
                Text("Username: [username]")
                Text("Email: [email]")
                Text("Member since: [date]")
            }
        }
        .navigationTitle("Profile")
    }
}

#Preview {
    UserProfileView()
}