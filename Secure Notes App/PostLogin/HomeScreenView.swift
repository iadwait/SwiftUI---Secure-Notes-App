//
//  HomeScreenView.swift
//  Secure Notes App
//
//  Created by Adwait Barkale on 22/02/24.
//

import SwiftUI

struct HomeScreenView: View {
    
    let userName = Utils.shared.loadData(key: UserDefaultsConstants.userName.rawValue)
    
    var body: some View {
        ScrollView {
            Text("Hi \(userName) !!")
                .font(.largeTitle)
        }
    }
}

#Preview {
    HomeScreenView()
}
