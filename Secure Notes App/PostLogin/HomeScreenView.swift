//
//  HomeScreenView.swift
//  Secure Notes App
//
//  Created by Adwait Barkale on 22/02/24.
//

import SwiftUI

struct HomeScreenView: View {
    
    
    @State var message:String = "Date Created: \(Date())"
    let notes = ["Some Dummy Notes", "Some Dummy Notes Some Dummy NotesSome Dummy Notes", "Some Dummy Notes", "Some Dummy Notes", "Some Dummy Notes", "Some Dummy Notes Some Dummy NotesSome Dummy NotesSome Dummy Notes", "Some Dummy Notes", "Some Dummy Notes", "Some Dummy Notes", "Some Dummy Notes", "Some Dummy Notes Some Dummy NotesSome Dummy NotesSome Dummy NotesSome Dummy Notes", "Some Dummy Notes", "Some Dummy Notes", "Some Dummy Notes", "Some Dummy Notes", "Some Dummy Notes", "Some Dummy Notes", "Some Dummy Notes", "Some Dummy Notes", "Some Dummy Notes Some Dummy NotesSome Dummy NotesSome Dummy Notes", "Some Dummy Notes", "Some Dummy Notes Some Dummy NotesSome Dummy NotesSome Dummy NotesSome Dummy Notes"]
    let userName = Utils.shared.loadData(key: UserDefaultsConstants.userName.rawValue)
    
    var body: some View {
        GeometryReader { reader in
            NavigationView {
                List {
                    ForEach(0..<notes.count) {note in
                        HStack {
                            Text(notes[note])
                            Spacer()
                            Image("RightArrow")
                        }
                        .padding([.top, .bottom], 10)
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
