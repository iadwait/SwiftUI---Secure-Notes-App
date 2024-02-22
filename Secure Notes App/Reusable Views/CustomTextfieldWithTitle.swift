//
//  CustomTextfieldWithTitle.swift
//  Secure Notes App
//
//  Created by Adwait Barkale on 22/02/24.
//

import SwiftUI

struct CustomTextfieldWithTitle: View {
    
    @Binding var tflValue: String
    @State var lblTop: String = "Title"
    @State var isSecureField: Bool = false
    
    var body: some View {
        Text(lblTop)
            .frame(maxWidth: .infinity, alignment: .leading)
            .offset(x: 10)
            .padding(.top, 30)
            .font(.title3)
        
        if isSecureField {
            SecureField(text: $tflValue) {
                
            }
            .frame(height: 40)
            .border(.black)
            .padding([.leading, .trailing], 10)
        } else {
            TextField("", text: $tflValue)
                .frame(height: 40)
                .border(.black)
                .padding([.leading, .trailing], 10)
        }
    }
}

#Preview {
    CustomTextfieldWithTitle(tflValue: .constant(""))
}
