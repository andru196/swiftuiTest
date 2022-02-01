import SwiftUI

//struct ContentView: View {
//
//    @State private var selectedView = 1
//
//    var body: some View {
//        TabView(selection: $selectedView) {
//            Text("First View")
//                .tabItem {
//                    Image(systemName: "1.circle")
//                    Text("First")
//                } .tag(1)
//            Text("Second View")
//                .tabItem {
//                    Image(systemName: "2.circle")
//                    Text("Second")
//                } .tag(2)
//        }
//    }
//}

struct ContentView: View {
        
    var body: some View {
        VStack {
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
        }
    }
}

