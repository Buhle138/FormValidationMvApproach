//
//  ContentView.swift
//  FormValidationMvApproach
//
//  Created by Buhle Radzilani on 2024/06/07.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    var isFormValid: Bool{
        return !email.isEmpty && !password.isEmpty && email.isValidEmail
    }
    
    var body: some View {
        Form{
            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
            SecureField("Password", text: $password)
            Button("Login"){
                
            }.disabled(!isFormValid)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
