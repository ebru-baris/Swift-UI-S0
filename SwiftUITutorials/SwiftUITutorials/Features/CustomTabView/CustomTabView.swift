//
//  CustomTabView.swift
//  SwiftUITutorials
//
//  Created by Ebru Barış on 27.11.2022.
//

import SwiftUI

struct CustomTabView: View {
    
    @State private var selectedIndex = CustomTabs.home
    
    var body: some View {
        VStack {
            Button("Reset"){
                selectedIndex = CustomTabs.home
            }
            Text("Hello World!")
            TabView (selection: $selectedIndex ){
                HeartView().tabItem {
                    Image(systemName: "heart")
                    if selectedIndex == CustomTabs.home{Text("Tab Label 1") }
                    }.tag(CustomTabs.home)
                StarView().tabItem {
                    Image(systemName: "star")
                    if selectedIndex == CustomTabs.heart { Text("Tab Label 2")}
                    }.tag(CustomTabs.heart)
            }.accentColor(.purple)
            }
        }
    }

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}

struct StarView: View {
    @State private var fastFoods = [
        "Hamburger",
        "Pizza",
        "Cips",
        "Cola"
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(fastFoods, id: \.self) { fastFood in
                    Text(fastFood)
                }
                .onDelete { fastFoods.remove(atOffsets: $0) }
                .onMove { fastFoods.move(fromOffsets: $0, toOffset: $1) }
            }
            .navigationTitle("Fast Foods")
            .toolbar {
                EditButton()
            }
        }
    }
}
struct HeartView: View {
    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: Text("sample").font(.largeTitle)){
                        Label("Details", systemImage: "ellipsis")
                    
                }
                List {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete { fruits.remove(atOffsets: $0) }
                    .onMove { fruits.move(fromOffsets: $0, toOffset: $1) }
                }
                .navigationTitle("Fruits")
                .toolbar {
                    EditButton()
                }
            }
        }
        
    }
}
