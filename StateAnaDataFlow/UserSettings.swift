//
//  UserSettings.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import SwiftUI

enum UserSettings {
    @AppStorage("isLoggedIn") static var isLoggedIn = false
    @AppStorage("name") static var name = ""
}
