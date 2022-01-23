//
//  ContentView.swift
//  swiftuiTest
//
//  Created by Andrew Tarasow on 23.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //            Text("Tap me")
            //                .onTapGesture{
            //                    print("Tapped!")
            //                }
            Image("cus")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture(count:2) {
                    print("Double tapped")
                }
                .gesture(
                    LongPressGesture(minimumDuration: 2)
                        .onEnded { _ in
                            print("Pressed")
                        }
                )
                .gesture(DragGesture(minimumDistance: 50)
                            .onEnded { _ in
                    print("Dragged")
                })
            Spacer()
            Text("Apple")
        }
        .contentShape(Rectangle())
        .onTapGesture {
            print("Hello, Apple")
        }
        
    }
    
    
}



