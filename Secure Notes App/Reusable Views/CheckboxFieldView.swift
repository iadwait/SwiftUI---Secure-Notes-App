//
//  CheckboxFieldView.swift
//  Secure Notes App
//
//  Created by Adwait Barkale on 21/02/24.
//

import SwiftUI

struct CheckboxFieldView: View {
    
    @State var checkState: Bool = false
    
    var body: some View {
        
        Button(action:
                {
            //1. Save state
            self.checkState = !self.checkState
            print("State : \(self.checkState)")
            
            
        }) {
            HStack(alignment: .top, spacing: 10) {
                
                //2. Will update according to state
                Rectangle()
                    .fill(self.checkState ? Color.green : Color.red)
                    .frame(width:20, height:20, alignment: .center)
                    .cornerRadius(5)
                
                Text("Set as default")
                
            }
        }
        .foregroundColor(Color.black)
        
    }
    
}

#Preview {
    CheckboxFieldView()
}
