//
//  ContentView.swift
//  swiftuiTest
//
//  Created by Andrew Tarasow on 23.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Image("cus")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
        Image(systemName: "cloud.sun.fill") // SF Symbols 3
            .font(.largeTitle)
            .padding(30)
            //.background(Color.green)
//            .background(Image("cus")
//                            .resizable()
//                            .frame(width: 200, height: 200))
            .background(Circle()
                            .fill(Color.red))
            .foregroundColor(.blue)
//            .clipShape(Circle())
//            .clipShape(RoundedRectangle(cornerRadius: 30))
            .clipShape(Capsule())
    }
    
    
}



