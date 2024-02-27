//
//  ContentView.swift
//  Secure Notes App
//
//  Created by Adwait Barkale on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    
    private let isDebugMode = true
    
    var body: some View {
        if !isDebugMode {
            WelcomeScreen()
        } else {
            HomeScreenView()
        }
    }
}

#Preview {
    ContentView()
}
