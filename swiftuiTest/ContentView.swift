//
//  ContentView.swift
//  swiftuiTest
//
//  Created by Andrew Tarasow on 23.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var age = 18
    var body: some View {
        VStack {
//            Stepper("Enter your age", value: $age, in: 0...130)
            Stepper("Enter your age", onIncrement: {
                self.age += 1
                print("Adding to age")
            }, onDecrement: {
                self.age -= 1
                print("Subtracing from age")
            })
            Text("Your age is \(age)")
        }
    }
    
    
}



