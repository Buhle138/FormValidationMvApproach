//
//  ContentView.swift
//  FormValidationMvApproach
//
//  Created by Buhle Radzilani on 2024/06/07.
//

import SwiftUI

struct LoginFormError{
    var email: String = ""
    var password: String = ""
}

struct ContentView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    //Login form error instance
    @State private var loginFormError = LoginFormError()
    
    private func clearForm() {
        loginFormError = LoginFormError()
    }
    
    var isFormValid: Bool{
        
        clearForm()
        
        if email.isEmpty{
            loginFormError.email = "Email is required!"
        }else if !email.isValidEmail {
            loginFormError.email = "Email is not in correct format!"
        }
        
        if password.isEmpty{
            loginFormError.password = "Password is required!"
        }
        
        return loginFormError.email.isEmpty && loginFormError.password.isEmpty
      
    }
    
    var body: some View {
        Form{
            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
            if !loginFormError.email.isEmpty{
                Text(loginFormError.email)
                    .font(.caption)
                    .foregroundColor(.red)
            }
            
            SecureField("Password", text: $password)
            if !loginFormError.password.isEmpty{
                Text(loginFormError.password)
                    .font(.caption)
                    .foregroundColor(.red)
            }
          
            Button("Login"){
                if isFormValid{
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
