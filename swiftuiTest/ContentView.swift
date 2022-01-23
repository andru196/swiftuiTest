//
//  ContentView.swift
//  swiftuiTest
//
//  Created by Andrew Tarasow on 23.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showHello = true
    var body: some View {
        //property wrapper: @State
        VStack {
            Toggle(isOn: $showHello){
                Text("Show Hello")
            }
            if showHello {
                Text("Hello, World!")
            }
        }
        
    }
    
    
}



