//
//  ContentView.swift
//  swiftuiTest
//
//  Created by Andrew Tarasow on 23.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            Text("some text some text some text some text some text some text some text some text")
            .kerning(5)
            .tracking(5)
            .padding(.bottom, 50)
                .lineLimit(3)
                .truncationMode(.middle)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .background(Color.blue)
                .lineSpacing(50)
    }

    
}



