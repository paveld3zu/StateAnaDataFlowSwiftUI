//
//  ContentView.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 100)
            
            ButtonView(title: timer.buttonTitle, color: Color.red) {
                timer.startTimer()
            }
            
            Spacer()
            
            ButtonView(title: "Log Out", color: Color.blue) {
                userManager.name = ""
                userManager.isLoggedIn = false
            }
        }
        .padding(.bottom, 40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
