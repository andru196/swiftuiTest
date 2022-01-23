import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            Text("SwiftUI")
//                .navigationTitle("WellCum")
//                .navigationBarTitleDisplayMode(.inline)
//                .navigationBarItems(trailing: HStack {
//                    Button("Help") {
//                        print("Help tapped")
//                    }
//
//                    Button("About") {
//                        print("About tapped")
//                    }
//                })
//        }
//    }
//}
//

struct ContentView: View {
    @State private var users = ["Users", "Maria", "Igor"]
    var body: some View {
        NavigationView {
            List {
                ForEach (users, id:\.self) {
                    Text($0)
                } .onDelete(perform: delete)
                    .onMove(perform: move)
            }
            .navigationBarItems(trailing: EditButton())
        }
    }
    func delete (at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
    
    func move (from source: IndexSet, to destination: Int) {
        users.move(fromOffsets: source, toOffset: destination)
    }
}

