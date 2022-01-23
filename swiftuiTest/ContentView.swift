//
//  ContentView.swift
//  swiftuiTest
//
//  Created by Andrew Tarasow on 23.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetail = false
    var body: some View {
        VStack {
            Button(action: {
                self.showDetail.toggle()
            }) {
                
                Text("Show details")
            } .padding()
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            if showDetail {
                Text("Some details here...")
            }
        }
    }
    
    
}



