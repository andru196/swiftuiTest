import SwiftUI

/// First part
//struct DetailView: View {
//    var body: some View {
//        Text("This is the detail view")
//    }
//}
//
//
//struct ContentView: View {
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                NavigationLink(destination: DetailView()) { Text("Show detail View")
//                }.navigationBarTitle("Navigation")
//            }
//        }
//    }
//}

/// Second part
//struct Dog: Identifiable {
//    var id = UUID()
//    var name: String
//}
//
//struct DogRow: View {
//    var dog: Dog
//
//    var body: some View {
//        Text(dog.name)
//    }
//}
//
//struct DogView: View {
//    var dog: Dog
//
//    var body: some View {
//        Text("Come and choose a \(dog.name)")
//    }
//}
//
//struct ContentView: View {
//
//    var body: some View {
//        let first = Dog(name: "Sobaka")
//        let second = Dog(name: "Doggg")
//        let dogs = [first, second]
//
//        return NavigationView {
//
//            List(dogs) { dog in
//                NavigationLink(destination: DogView(dog: dog)) {
//                    DogRow(dog: dog)
//                }
//            } .navigationTitle("Choose a dog")
//        }
//    }
//}


/// Third part

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Text("Detail")
        Button("Back") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ContentView: View {

    @State private var showingDetail = false
    
    var body: some View {
        Button(action: {
            self.showingDetail.toggle()
        }) {
            Text("Show detail")
        } .sheet(isPresented: $showingDetail) {
            DetailView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
