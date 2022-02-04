import SwiftUI

//struct ContentView: View {
//
//    var body: some View {
//        VStack {
//            Text("First")
//            Text("Second")
//                .offset(y:15)
//                .padding(.bottom, 2)
//            Text("Third")
//            ZStack(alignment: .bottomTrailing) {
//                Image("cus")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                Text("This photo was made by: ")
//                    .padding(4)
//                    .background(Color.black)
//                    .foregroundColor(.white)
//                    .offset(x:-7, y: -7)
//            }
//        }
//    }
//}


//struct ContentView: View {
//
//    var body: some View {
//        Text("Hello, Swift")
//            .font(.largeTitle)
//            .padding()
//            .background(Color.orange)
//            .padding()
//            .background(Color.green)
//            .padding()
//            .background(Color.blue)
//            .padding()
//            .border(Color.red, width: 5)
//    }
//}


//struct ContentView: View {
//
//    var body: some View {
//        Text("Hello, Swift")
//            .padding()
//            .overlay(RoundedRectangle(cornerRadius: 15)
//                        .stroke(Color.green, lineWidth: 5))
//    }
//}


//struct ContentView: View {
//
//    var body: some View {
//       Circle()
//            .stroke(Color.red, style:
//            StrokeStyle(lineWidth: 5, dash: [10, 2]))
////            .strokeBorder(Color.red, lineWidth: 10)
//            .frame(width: 200, height: 200)
//    }
//}

//
//struct ContentView: View {
//
//    var body: some View {
//       Text("Hello, Swift")
//            .padding()
//            .border(Color.red, width: 5)
//            .shadow(color: .red, radius: 4, x: 10, y: 10)
//    }
//}



//struct ContentView: View {
//
//    var body: some View {
//        Button(action: {
//            print("Button tapped")
//        }) {
//            Image(systemName: "cloud.fill")
//                .foregroundColor(.white)
//                .padding()
//                .background(Color.orange)
//                .clipShape(Circle())
//        }
//    }
//}


//struct ContentView: View {
//
//    @State private var rotation = 0.0
//    var body: some View {
//        VStack {
//            Slider(value: $rotation, in:0...360, step: 1.0)
//            Text("Hello, Swift")
//                .rotationEffect(.degrees(rotation), anchor: .topLeading)
//        }
//    }
//}


//struct ContentView: View {
//
//    var body: some View {
//        VStack {
//            Text("Hello, Swift")
//                .font(.largeTitle)
//                .rotation3DEffect(.degrees(45), axis: (x:1, y:1, z:2))
//        }
//    }
//}

//struct ContentView: View {
//
//    var body: some View {
//        VStack {
//            Text("Hello, Swift")
//                .scaleEffect(3, anchor: .bottomLeading)
//        }
//    }
//}


//struct ContentView: View {
//
//    var body: some View {
//        VStack {
//            Text("Hello, Swift")
//                .padding()
//                .background(Color.green)
//                .cornerRadius(20)
//                .opacity(0.75)
//                .blur(radius: 2)
//        }
//    }
//}


struct ContentView: View {
        
    var body: some View {
        Image("cus")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .colorMultiply(.red)
            .contrast(0.5)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
