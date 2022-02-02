import SwiftUI

//struct ContentView: View {
//
//    private static let key = "Tap"
//
//    @State private var tapCount = UserDefaults.standard.integer(forKey: key)
//
//    var body: some View {
//        Button("Tap count: \(tapCount)") {
//            self.tapCount += 1
//            UserDefaults.standard.set(self.tapCount, forKey: ContentView.key)
//        }
//    }
//}


struct User : Codable {
    var firstName: String
    var lastName: String
}

// JSON Encoder

struct ContentView: View {

    @State private var user = User(firstName:"Ivan", lastName: "Petrov")
    
    var body: some View {
        Button("Save user") {
            let encoder = JSONEncoder()
            if let data = try? encoder.encode(self.user) {
                UserDefaults.standard.set(data, forKey: "User")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
