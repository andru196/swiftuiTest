//
//  ContentView.swift
//  swiftuiTest
//
//  Created by Andrew Tarasow on 23.01.2022.
//

import SwiftUI

struct ContentView: View {
    private var colors = ["black", "white", "red", "green", "blue"]
    @State private var selectedColor = 0
    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Choose a color")) {
                ForEach(0..<colors.count) { index in
                    Text(self.colors[index])
                }
            } .pickerStyle(.segmented)
            Text("Yoy selected: \(colors[selectedColor])")
        }
    }
    
    
}



