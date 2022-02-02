import SwiftUI

struct CustomModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .foregroundColor(.red)
            .background(Color.green)
    }
}

struct CustomText: View {
    var name: String
    
    var body: some View {
        Text(name)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.red)
            .background(Color.green)
    }
}

extension View  {
    func customM() -> some View {
        self.modifier(CustomModifier())
    }
}

struct ContentView: View {
    
    @State private var useGreenText = false
    
    var body: some View {
        VStack(spacing: 30) {
            CustomText(name: "First")
            Text("Second").modifier(CustomModifier())
            Text("Third").customM()
                
        }
    }
}
