//
//  HomeScreenView.swift
//  Secure Notes App
//
//  Created by Adwait Barkale on 22/02/24.
//

import SwiftUI

struct HomeScreenView: View {
    
    
    @State var message:String = "Date Created: \(Date())"
    let notes = ["First Note", "Second Note", "Third Note", "Fourth Note"]
    let userName = Utils.shared.loadData(key: UserDefaultsConstants.userName.rawValue)
    
    var body: some View {
        GeometryReader { reader in
            NavigationView {
                List {
                    ForEach(0..<notes.count) {note in
                        HStack {
                            VStack(alignment: .leading, content: {
                                Text("Note Name: \(notes[note])")
                                
                                if note == 2 {
                                    Text("My name is adwait")
                                        .lineLimit(nil)
                                        .fixedSize(horizontal: false, vertical: true)
                                        //.frame(width: reader.size.width)
    //                                .multilineTextAlignment(.leading)
                                } else {
                                    Text(message)
                                        .lineLimit(nil)
                                        .fixedSize(horizontal: false, vertical: true)
                                        //.frame(width: reader.size.width)
    //                                .multilineTextAlignment(.leading)
                                }
                                
                            })
                            .padding([.leading], 10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer()
                            
                            Image("RightArrow")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 35, maxHeight: 35)
                                .padding(.trailing, 10)
                        }
                        .padding([.top, .bottom], 20)
                        .background(Color.init(hex: "D3D3D3"))
                        .cornerRadius(10)
                        .frame(height: 100)
                        .listRowInsets(EdgeInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0)))
                    }
                    
                    Color(.orange)
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .listStyle(.plain)
                    //.listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                    //.padding(.top, 30)
                    //.listRowInsets(EdgeInsets())
                }.navigationTitle(Text("Notes"))
                    //.padding(.bottom, 60)
                    .frame(maxHeight: .infinity)
                    .environment(\.defaultMinListRowHeight, 120)
                    .scrollContentBackground(.hidden) // Make background white of listview
            }
        }
    }
}

#Preview {
    HomeScreenView()
}
