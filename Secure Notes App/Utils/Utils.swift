//
//  Utils.swift
//  Secure Notes App
//
//  Created by Adwait Barkale on 22/02/24.
//

import Foundation

class Utils {
    
    static let shared = Utils()
    
    func saveData(key: String, value: String) {
        UserDefaults.standard.setValue(value, forKey: key)
    }
    
    func loadData(key: String) -> String {
        return UserDefaults.standard.string(forKey: key) ?? ""
    }
    
}

enum UserDefaultsConstants: String {
    
    case userName = "UserName"
    case userPassword = "UserPassword"
    
}
