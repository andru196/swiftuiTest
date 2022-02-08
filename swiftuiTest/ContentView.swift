import SwiftUI

//struct ContentView: View {
//    //                      core graphics
//    @State private var scale: CGFloat = 1
//    var body: some View {
//        Button(action: {
//            self.scale += 1
//        }) {
//            Text("Tap me")
//                .scaleEffect(scale)
//                //.animation(.linear(duration: 5))
////                .animation(.easeIn) //применяется к модификатору выше
//                .animation(.easeOut)
//        }
//    }
//}

//struct ContentView: View {
//    @State private var angle: Double = 0
//    @State private var borderThickness: CGFloat = 1
//    var body: some View {
//        Button(action: {
//            self.angle += 45
//            self.borderThickness += 1
//        }) {
//            Text("Tap me")
//                .padding()
//                .border(Color.red, width: borderThickness)
//                .rotationEffect(.degrees(angle))
//                .animation(.easeIn)
//        }
//    }
//}

//struct ContentView: View {
//    @State private var angle: Double = 0
//    var body: some View {
//        Button(action: {
//            self.angle += 45
//        }) {
//            Text("Tap me")
//                .padding()
//                .rotationEffect(.degrees(angle))
////                .animation(.spring())
//                .animation(.interpolatingSpring(mass: 1, stiffness: 1, damping: 0.5, initialVelocity: 5))
//        }
//    }
//}

//struct ContentView: View {
//    @State private var showingWelcome = false
//    var body: some View {
//        VStack {
//            Toggle(isOn: $showingWelcome.animation(.spring()))
//            {
//                Text("Toggle label")
//            }
//            if showingWelcome {
//                Text("Hello, SwiftUI!")
//            }
//        }
//    }
//}


//struct ContentView: View {
//    @State private var opacity: Double = 1
//    var body: some View {
//        Button(action: {
//            withAnimation(.linear(duration: 3)) {
//                self.opacity -= 1
//            }
//        }) {
//            Text("Tap me")
//                .padding()
//                .opacity(opacity)
//        }
//    }
//}


//struct ContentView: View {
//    @State private var rotation = 0.0
//    var body: some View {
//        Rectangle()
//            .fill(Color.green)
//            .frame(width: 200, height: 200)
//            .rotationEffect(.degrees(rotation))
//            .animation(Animation.easeOut(duration: 3).delay(1))
//            .onTapGesture {
//                self.rotation += 180
//            }
//    }
//}

struct ContentView: View {
    @State private var scale: CGFloat = 1
    var body: some View {
        Rectangle()
            .fill(Color.green)
            .frame(width: 200, height: 200)
            .scaleEffect(scale)
            .onAppear{
                let baseAnimation = Animation.easeOut(duration: 1)
                let repeated = baseAnimation
                    .repeatForever(autoreverses: true)
                return withAnimation(repeated) {
                    self.scale = 0.5
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
