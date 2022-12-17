//
//  NavigationUsers.swift
//  SwiftUITutorials
//
//  Created by Ebru Barış on 27.11.2022.
//

import SwiftUI

struct NavigationUsers: View {
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationView{
            List(NavigationUserModel.samples, id: \.id) { data in
                NavigationLink{
                    UserViewDetail(user: data)
                } label: {
                    Text(data.name)
                }
                
            }.sheet(isPresented: $isPresented, onDismiss: {
                print("")
            }, content: {
                Button("Hello"){
                    isPresented.toggle()
                }
            })
            .listStyle(GroupedListStyle())
            .navigationTitle(Text("Users"))
            .toolbar {
                ToolbarItem {
                    //NavigationLink("Welcome"){
                    // Text("Products").background(Color.red)
                    Button("Open Sheet"){
                        isPresented.toggle()
                    }
                }
            }
        }
    }
}

struct NavigationUsers_Previews: PreviewProvider {
    static var previews: some View {
        NavigationUsers()
    }
}
