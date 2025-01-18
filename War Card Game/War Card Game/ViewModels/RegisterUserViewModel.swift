//
//  RegisterUserViewModel.swift
//  War Card Game
//
//  Created by Brendan McShane on 1/17/25.
//
// import fireBase
import Foundation


class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""

    init () {}

    func register() {
        guard validate() else {
            return
        }
        
        
    }
    
    
    private func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            return false
        }
        
        
        guard password.count >= 6 else {
            return false
        }
    }
}
