//
//  SignInView.swift
//  StockTracking
//
//  Created by Batuhan Gözegü on 18.08.2025.
//

import SwiftUI

struct SignInView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @FocusState private var focusEmail: Bool
    @FocusState private var focusPassword: Bool
    
    var body: some View {
        VStack(spacing: 30){
            VStack(alignment: .leading, spacing: 10,){
                Text("Welcome Back")
                    .font(.system(size: 32, weight: .semibold))
                Text("Sign in to your account")
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
                        contentType: .password, textFieldType: .password,
                        text: $password)
                
            }
            
            HStack{
                Button("Forgot Password?"){
                    print("forgot password")
                }
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            VStack{
                ButtonView(title: "Sign In", action: {
                    print("sign In")
                }, color: Color.blue)
            }
            
            OrView()
        
            VStack(spacing: 20){

                
                ButtonView(
                    title: "Sign In with Apple",
                    action: {
                    print("apple")
                            },
                    image: "Apple",
                    color: Color(.secondarySystemBackground),
                    hasBorder: true,
                    hasShadow: false)
                
                ButtonView(
                    title: "Sign In with Google",
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
                Text("Don't have an account?")
                Button(action: {
                    
                }){
                    Text("Sign Up")
                }
                
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SignInView()
}
