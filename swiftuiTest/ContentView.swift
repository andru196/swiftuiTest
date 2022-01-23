//
//  ContentView.swift
//  swiftuiTest
//
//  Created by Andrew Tarasow on 23.01.2022.
//

import SwiftUI
//first
//struct MusicRow: View {
//
//    var name: String
//
//    var body: some View {
//        Text("Music: \(name)")
//    }
//}
//
//struct ContentView: View {
//    var body: some View {
//        List {
//            MusicRow(name: "Rock")
//            MusicRow(name: "Rap")
//            MusicRow(name: "Classical")
//        }
//    }
//}

//sec
//struct Restaurant: Identifiable {
//    var id = UUID()
//    var name: String
//}
//
//struct RestaurantRow: View {
//    var restaurant: Restaurant
//    var body: some View {
//        Text("Cum & eat at \(restaurant.name)")
//    }
//}
//
//struct ContentView: View {
//    var body: some View {
//        let first = Restaurant(name: "FirstRestaurant")
//        let secont = Restaurant(name: "SecondRestaurant")
//        let third = Restaurant(name: "ThirdRestaurand")
//        let restaurants = [first, secont, third]
//        return List (restaurants) {
//            RestaurantRow(restaurant: $0)
//        }
//    }
//}

/// third

struct TaskRow: View {
    var body: some View {
        Text("Some task")
    }
}

struct ContentView: View {
    var body: some View {
        List {
            Section(header: Text("Important tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
            
            Section(header: Text("Other tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
            } .listRowBackground(Color.yellow)
        } .listStyle(GroupedListStyle())
    }
}

