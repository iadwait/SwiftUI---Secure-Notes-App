//
//  ContentView.swift
//  Secure Notes App
//
//  Created by Adwait Barkale on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tflEmailVal: String = ""
    
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
            
            
            Text("Email")
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x: 20)
                .padding(.top, 30)
                .font(.title3)
            
            TextField("", text: $tflEmailVal)
                .frame(height: 40)
                .border(.black)
                .padding([.leading, .trailing], 10)
            
            Text("Password")
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x: 20)
                .padding(.top, 30)
                .font(.title3)
            
            TextField("", text: $tflEmailVal)
                .frame(height: 40)
                .border(.black)
                .padding([.leading, .trailing], 10)
            
            
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
        }
    }
}

#Preview {
    ContentView()
}


extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}


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
