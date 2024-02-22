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
                    
                } else if tflPassword1 != tflPassword2 {
                    
                } else {
                    
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
        }
    }
}

#Preview {
    RegisterView()
}
