//
//  LoginView.swift
//  Secure Notes App
//
//  Created by Adwait Barkale on 21/02/24.
//

import SwiftUI

struct LoginView: View {
    @State private var tflUserNameVal: String = ""
    @State private var tflPasswordVal: String = ""
    @State private var landON: String = "Home"
    @State private var showingAlert = false
    @State private var errorMessage = "UserName or Password field cannot be empty"
    @State private var navigateToHomeScreen = false
    
    var body: some View {
        ScrollView {
            Text("Sign in to your account")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title2)
                .padding([.leading,.trailing], 10)
            
            Color(.lightGray)
                .frame(maxWidth: .infinity)
                .frame(height: 4)
                .padding([.leading,.trailing], 0)
            
            CustomTextfieldWithTitle(tflValue: $tflUserNameVal, lblTop: "UserName")
            
            CustomTextfieldWithTitle(tflValue: $tflPasswordVal, lblTop: "Password", isSecureField: true)
            
            Text("Which page would you like to land on ?")
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x: 10)
                .padding(.top, 30)
            HStack {
                Text("Land on")
                    .padding(.leading, 10)
                
                Menu {
                    Button {
                        landON = "Home"
                    } label: {
                        Text("Home")
                        //Image(systemName: "arrow.down.right.circle")
                    }
                    Button {
                        landON = "Profile"
                    } label: {
                        Text("Profile")
                        //Image(systemName: "arrow.up.and.down.circle")
                    }
                } label: {
                    Text(landON)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
            }
            .frame(height: 40)
            .border(Color.black)
            .padding(.top, 0)
            .padding([.leading, .trailing], 10)
            
            CheckboxFieldView()
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x: 10)
                .padding(.top, 10)
            
            Button(action: {
                
            }, label: {
                Text("Forgot Password?")
            })
            .frame(maxWidth: .infinity, alignment: .trailing)
            .offset(x: -20, y: 14)
            
            Button {
                print("Button Submit Tapped")
                if !tflUserNameVal.isEmpty && !tflPasswordVal.isEmpty {
                    if Utils.shared.validateUserNameAndPassword(enteredUserName: tflUserNameVal, enteredPassword: tflPasswordVal) {
                        print("Allow Login")
                        showingAlert = false
                        navigateToHomeScreen = true
                    } else {
                        print("Show Alert")
                        errorMessage = "UserName or password is incorrect."
                        showingAlert = true
                        navigateToHomeScreen = false
                    }
                } else {
                    print("Show Alert")
                    errorMessage = "UserName or Password field cannot be empty"
                    showingAlert = true
                    navigateToHomeScreen = false
                }
            } label: {
                Text("Sign In")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 40)
            .background(Color.init(hex: "D3D3D3"))
            .border(Color.black)
            .foregroundColor(.black)
            .padding([.leading, .trailing], 10)
            .padding(.top, 10)
            .navigationDestination(isPresented: $navigateToHomeScreen, destination: {
                HomeScreenView()
            })
            .alert(errorMessage, isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
            }
        }
    }
}

#Preview {
    LoginView()
}
