//
//  ContentView.swift
//  swiftuiTest
//
//  Created by Andrew Tarasow on 23.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var password = ""
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("Enter you password", text: $password)
            Text("Hello, \(name)")
            Text("\(password)")
        }
    }
    
    
}



