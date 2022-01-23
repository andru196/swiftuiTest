//
//  ContentView.swift
//  swiftuiTest
//
//  Created by Andrew Tarasow on 23.01.2022.
//

import SwiftUI

struct ContentView: View {
//    var body: some View {
//        Text("Hello World")
//            .font(.largeTitle)
//            .padding()
//            .foregroundColor(.white)
//            .background(LinearGradient(colors: [.black, .white], startPoint: .top, endPoint: .bottom))
//    }
    
    var body: some View {
        let colors = Gradient(colors: [.red, .green, .yellow, .blue, .purple])
//        let gradient = RadialGradient(gradient: colors, center: .center, startRadius: 50, endRadius: 200)
        let gradient = AngularGradient(gradient: colors, center: .center)
        return Circle()
            .strokeBorder(gradient, lineWidth: 20)
//            .fill(gradient)
//            .frame(width: 400, height: 400)
    }
    
    
}



