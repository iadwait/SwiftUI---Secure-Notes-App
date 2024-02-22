//
//  RegisterView.swift
//  Secure Notes App
//
//  Created by Adwait Barkale on 22/02/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var tflEmail: String = ""
    @State private var tflPassword1: String = ""
    @State private var tflPassword2: String = ""
    @State private var navigateToHomeScreen: Bool = false
    @State private var showError: Bool = false
    @State private var errorMessage: String = "Something went wrong please try again"
    
    var body: some View {
        ScrollView {
            Text("Register to Secure Notes")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title2)
                .padding([.leading,.trailing], 10)
            
            Color(.lightGray)
                .frame(maxWidth: .infinity)
                .frame(height: 4)
                .padding([.leading,.trailing], 0)
            
            CustomTextfieldWithTitle(tflValue: $tflEmail, lblTop: "Email")
            
            CustomTextfieldWithTitle(tflValue: $tflPassword1, lblTop: "Enter Password")
            
            CustomTextfieldWithTitle(tflValue: $tflPassword2, lblTop: "Confirm Password")
            
            Button(action: {
                if tflEmail.isEmpty || tflPassword1.isEmpty || tflPassword2.isEmpty {
                    showError = true
                    errorMessage = "One or more fields empty."
                } else if tflPassword1 != tflPassword2 {
                    showError = true
                    errorMessage = "Password and Confirm Password Mismatch."
                } else {
                    // Allow Registration
                    showError = false
                    navigateToHomeScreen = true
                }
            }, label: {
                Text("Register")
            })
            .frame(maxWidth: .infinity)
            .frame(height: 40)
            .background(Color.init(hex: "D3D3D3"))
            .foregroundColor(.black)
            .border(Color.black)
            .padding([.leading, .trailing], 10)
            .padding(.top, 30)
            .navigationDestination(isPresented: $navigateToHomeScreen) {
                HomeScreenView()
            }
            .alert(errorMessage, isPresented: $showError) {
                Button("OK", role: .cancel) { }
            }
        }
    }
}

#Preview {
    RegisterView()
}
