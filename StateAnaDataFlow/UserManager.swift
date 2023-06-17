//
//  UserManager.swift
//  StateAnaDataFlow
//
//  Created by Pavel Karunnyj on 17.06.2023.
//

import Foundation
import Combine

final class UserManager: ObservableObject {
    
    @Published var isLoggedIn = UserSettings.isLoggedIn {
        didSet {
            UserSettings.isLoggedIn = isLoggedIn
        }
    }
    
    var name = UserSettings.name {
        didSet {
            UserSettings.name = name
        }
    }

}
