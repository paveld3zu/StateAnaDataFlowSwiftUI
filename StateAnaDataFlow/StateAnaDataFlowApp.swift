//
//  StateAnaDataFlowApp.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var userManager = UserManager()
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(userManager)
        }
    }
}
