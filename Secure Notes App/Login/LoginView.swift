//
//  LoginView.swift
//  Secure Notes App
//
//  Created by Adwait Barkale on 21/02/24.
//

import SwiftUI

struct LoginView: View {
    @State private var tflEmailVal: String = ""
    @State private var tflPasswordVal: String = ""
    @State private var showingAlert = false
    
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
            
            CustomTextfieldWithTitle(tflValue: $tflEmailVal, lblTop: "Email")
            
            CustomTextfieldWithTitle(tflValue: $tflEmailVal, lblTop: "Password")
            
            Text("Which page would you like to land on ?")
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x: 10)
                .padding(.top, 30)
            HStack {
                Text("Land on")
                    .padding(.leading, 10)
                
                Menu {
                    Button {
                        // do something
                    } label: {
                        Text("Transaction History")
                        //Image(systemName: "arrow.down.right.circle")
                    }
                    Button {
                        // do something
                    } label: {
                        Text("Profile")
                        //Image(systemName: "arrow.up.and.down.circle")
                    }
                } label: {
                    Text("Dashboard")
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
            
            Button {
                print("Button Submit Tapped")
                if !tflEmailVal.isEmpty && !tflPasswordVal.isEmpty {
                    print("Allow Login")
                    showingAlert = false
                } else {
                    print("Show Alert")
                    showingAlert = true
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
            .padding(.top, 40)
            .alert("Email or Password field cannot be empty", isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
            }
        }
    }
}

#Preview {
    LoginView()
}
