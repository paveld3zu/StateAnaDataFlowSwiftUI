//
//  RootView.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
            if user.isLoggedIn {
                ContentView()
            } else {
                LoginView()
            }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .environmentObject(UserManager())
    }
}
