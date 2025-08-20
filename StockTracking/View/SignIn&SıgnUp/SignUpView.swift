//
//  SignUpView.swift
//  StockTracking
//
//  Created by Batuhan Gözegü on 20.08.2025.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @FocusState private var focusEmail: Bool
    @FocusState private var focusPassword: Bool
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {

            VStack(spacing: 30){
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Create Account")
                        .font(.system(size: 32, weight: .semibold))
                    Text("Join us to start tracking stocks")
                        .font(.system(size: 17))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(spacing: 20){
                    
                    LabelView(
                        label: "Email",
                        placeHolder: "Enter your email",
                        contentType: .emailAddress,
                        textFieldType: .email,
                        text: $email)
                    
                    LabelView(
                        label: "Password",
                        placeHolder: "Enter your password",
                        contentType: .password,
                        textFieldType: .password,
                        text: $password)
                    
                    LabelView(
                        label: " Confirm Password",
                        placeHolder: "Confirm your password",
                        contentType: .password,
                        textFieldType: .password,
                        text: $confirmPassword)
                    
                }
                
                VStack{
                    ButtonView(title: "Sign Up", action: {
                        print("sign up")
                    }, color: Color.blue)
                }
                
                OrView()
                
                VStack(spacing: 20){
                    
                    ButtonView(
                        title: "Sign Up with Apple",
                        action: {
                            print("apple")
                        },
                        image: "Apple",
                        color: Color(.secondarySystemBackground),
                        hasBorder: true,
                        hasShadow: false)
                    
                    ButtonView(
                        title: "Sign Up with Google",
                        action: {
                            print("google")
                        },
                        image: "Google",
                        color: Color(.secondarySystemBackground),
                        hasBorder: true,
                        hasShadow: false)
                    
                }
                .frame(maxWidth: .infinity)
                
                HStack{
                    Text("Already have an account?")
                    Button("Sign In"){
                        dismiss()
                    }
                    
                }
                
                Spacer()
            }
            
            .padding()
        }
    }

#Preview {
    SignUpView()
}
