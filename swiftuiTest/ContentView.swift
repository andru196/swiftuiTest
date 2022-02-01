import SwiftUI

struct ContentView: View {
    
    @State private var colors = ["Red", "Green", "Blue"]
    @State private var selectedColors = 0
    @State private var additionalSettings = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Colors")) {
                    Picker(selection: $selectedColors, label: Text("Select a coolor")) {
                        ForEach (0..<colors.count) {
                            Text(self.colors[$0])
                        }
                    } .pickerStyle(SegmentedPickerStyle())
                }
                Toggle(isOn: $additionalSettings) {
                    Text("Additional settings")
                }
                Button(action: {
                    
                }) {
                    Text("Save changes")
                } .disabled(!additionalSettings)
                
                
            }
        } .navigationBarTitle("Settings")
    }
}

