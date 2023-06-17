//
//  LoginView.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var name = ""
    @State private var isNameLengthMatch = false
    
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            ZStack(alignment: .trailing) {
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                    .frame(width: 240)
                    .onChange(of: name) { _ in
                        isNameLengthMatch = name.count >= 3
                    }
                
                Text("\(name.count)")
                    .padding(.trailing, -24)
                    .foregroundColor( isNameLengthMatch ? .green : .red )
            }
            .padding()
            
            Button(action: login) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
                .foregroundColor(isNameLengthMatch ? .blue : .gray.opacity(0.5))
            }
            .disabled(!isNameLengthMatch)
            
        }
    }
    
    private func login() {
        if !name.isEmpty, isNameLengthMatch  {
            user.name = name
            user.isLoggedIn.toggle()
        }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
