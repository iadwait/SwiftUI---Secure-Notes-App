//
//  HomeScreenView.swift
//  Secure Notes App
//
//  Created by Adwait Barkale on 22/02/24.
//

import SwiftUI

struct HomeScreenView: View {
    
    
    @State var message:String = "Date Created: \(Date())"
    let notes = ["Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note", "Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note", "Some Dummy Note Some Dummy Note", "Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note Some Dummy Note"]
    let userName = Utils.shared.loadData(key: UserDefaultsConstants.userName.rawValue)
    
    var body: some View {
        GeometryReader { reader in
            NavigationView {
                List {
                    ForEach(0..<notes.count) {note in
                        HStack {
                            Text(notes[note])
                                .padding(.all, 10)
                        
                            Spacer()
                            Image("RightArrow")
                                .padding(.trailing, 10)
                        }
                        .border(Color.gray)
                        .padding([.top, .bottom], 12)
                    }
                    .listRowInsets(.init(top: 0,
                                         leading: 0,
                                         bottom: 0,
                                         trailing: 0))
                    
                }.navigationTitle(Text("Notes"))
                    .scrollContentBackground(.hidden) // Make background white of listview
            }
        }
    }
}

#Preview {
    HomeScreenView()
}
