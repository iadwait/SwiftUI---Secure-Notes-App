//
//  Utils.swift
//  Secure Notes App
//
//  Created by Adwait Barkale on 22/02/24.
//

import Foundation

class Utils {
    
    static let shared = Utils()
    
    // MARK: - User Defaukts Helper
    func saveData(key: String, value: String) {
        UserDefaults.standard.setValue(value, forKey: key)
    }
    
    func loadData(key: String) -> String {
        return UserDefaults.standard.string(forKey: key) ?? ""
    }
    
    func validateUserNameAndPassword(enteredUserName: String, enteredPassword: String) -> Bool {
        let userName = loadData(key: UserDefaultsConstants.userName.rawValue)
        let password = loadData(key: UserDefaultsConstants.userPassword.rawValue)
        
        if enteredUserName == userName && enteredPassword == password {
            return true
        }
        
        return false
    }
    
}

enum UserDefaultsConstants: String {
    
    case userName = "UserName"
    case userPassword = "UserPassword"
    
}
