//
//  AddView.swift
//  swiftuiTest
//
//  Created by Andrew Tarasow on 04.02.2022.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var name =  ""
    @State private var type = "Personal"
    @State private var amount = ""
    @ObservedObject var expenses: Expenses

    let types = ["Bussines", "Personal"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Название", text: $name)
                Picker("Тип", selection: $type) {
                    ForEach(self.types, id: \.self) {
                        Text($0)
                    }
                }
                TextField("Стоимость", text: $amount)
                    .keyboardType(.numberPad)
            }
            .navigationBarTitle("добавить")
            .navigationBarItems(trailing:
                                    Button("Сохнранить") {
                if let actualAmount = Int(self.amount) {
                    let item = ExpenseItem(name: self.name, type: self.type, amount: actualAmount)
                    self.expenses.items.append(item)
                    self.presentationMode.wrappedValue.dismiss()
                }
            })
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}
