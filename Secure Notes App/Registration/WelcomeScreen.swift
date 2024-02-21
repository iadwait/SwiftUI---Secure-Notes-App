//
//  WelcomeScreen.swift
//  Secure Notes App
//
//  Created by Adwait Barkale on 21/02/24.
//

import SwiftUI

struct WelcomeScreen: View {
    
    @State var navigateToLogin = false
    
    var body: some View {
        NavigationStack {
            Text("Secure Notes App")
                .font(.title)
                .frame(maxWidth: .infinity)
            
            Spacer()
            
            VStack {
                Button {
                    
                } label: {
                    Text("Register")
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50, alignment: .center)
                .background(Color.init(hex: "D3D3D3"))
                .foregroundColor(.black)
                
                Button {
                    navigateToLogin = true
                } label: {
                    Text("Login")
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50, alignment: .center)
                .background(Color.init(hex: "D3D3D3"))
                .foregroundColor(.black)
                .navigationDestination(isPresented: $navigateToLogin) {
                    LoginView()
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100, alignment: .center)
            .padding([.leading, .trailing], 10)
            
            Spacer()
            
        }
    }
}

#Preview {
    WelcomeScreen()
}
