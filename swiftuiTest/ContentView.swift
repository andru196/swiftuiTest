import SwiftUI

// property wrappers:
// @State - подходит для структур
// @ObservedObject - требует экземпляры ObservableObject
// @EnvironmentObject - можно делиться даннами со всеми view 
// @Published


//class User: ObservableObject {
//    @Published var firstName = "Ivan"
//    @Published var lastName = "Petrov"
//}
//
//struct ContentView: View {
//
//    @ObservedObject var user = User()
//
//    var body: some View {
//        VStack() {
//            Text("Your name is \(user.firstName) \(user.lastName)")
//            TextField("First Name", text: $user.firstName)
//            TextField("Last Name", text: $user.lastName)
//        }
//    }
//}


struct ContentView: View {
    
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            Text("Your settings is \(settings.score)")
            Button(action: {
                self.settings.score += 1
            }) {
                Text("Increase Score")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
