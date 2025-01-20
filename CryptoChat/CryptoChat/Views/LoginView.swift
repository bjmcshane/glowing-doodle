import SwiftUI

struct LoginView: View {
    @EnvironmentObject var authManager: AuthenticationManager
    @State private var email = ""
    @State private var password = ""
    @State private var isSignUp = false
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("CryptoChat")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                if isSignUp {
                    authManager.signUp(email: email, password: password) { success, error in
                        if !success {
                            alertMessage = error ?? "Sign up failed"
                            showAlert = true
                        }
                    }
                } else {
                    authManager.signIn(email: email, password: password) { success, error in
                        if !success {
                            alertMessage = error ?? "Login failed"
                            showAlert = true
                        }
                    }
                }
            }) {
                Text(isSignUp ? "Sign Up" : "Login")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button(action: {
                isSignUp.toggle()
            }) {
                Text(isSignUp ? "Already have an account? Login" : "New user? Sign Up")
                    .foregroundColor(.blue)
            }
        }
        .padding()
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
    }
} 