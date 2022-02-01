import SwiftUI

//struct ContentView: View {
//
//    @State private var showingALert1 = false
//    @State private var showingALert2 = false
//
//    var body: some View {
//        HStack {
//            Button("Show 1") {
//                self.showingALert1 = true
//            } .alert(isPresented: $showingALert1) {
//                Alert(title: Text("One"),
//                      message: Text("Some detail msg"),
//                      dismissButton: .default(Text("OK")))
//            }
//
//            Button("Show 2") {
//                self.showingALert2 = true
//            } .alert(isPresented: $showingALert2) {
//                Alert(title: Text("Two"),
//                      message: Text("Some detail msg"),
//                      dismissButton: .cancel())
//            }
//        }
//    }
//}

//struct ContentView: View {
//
//    @State private var showingALert = false
//
//    var body: some View {
//        Button(action: {
//            self.showingALert = true
//        }) {
//            Text("Show Alert")
//        } .alert(isPresented: $showingALert) {
//            Alert(title: Text("Are u sure u esmy to delete this?"), message: Text("There is no wat back"), primaryButton: .destructive(Text("Delete")) {
//                print("Deleting...")
//            }, secondaryButton: .cancel())
//
//
//        }
//    }
//}

struct ContentView: View {
    
    @State private var showingALert = false
    
    var body: some View {
        Button(action: {
            self.showingALert = true
        }) {
            Text("Show action Sheets")
        } .actionSheet(isPresented: $showingALert) {
            ActionSheet(title: Text("What do you want to do?"),
                        message: Text("There is only one choise"),
                        buttons: [.default(Text("Dismiss Action Sheet")),
                                  .cancel(),
                                  .destructive(Text("Delete"))])
        }
    }
}
