//
//  SampleListView.swift
//  SwiftUITutorials
//
//  Created by Ebru Barış on 26.11.2022.
//

import SwiftUI

struct SampleListView: View {
    
    private let items: Array<String> = [
        "chevron.right",
        "chevron.left",
        "chevron.right",
        "chevron.left"
    ]
    
    var body: some View {
        
        List{
            Section(header: Text("Sample").font(.caption), content: {
            HStack{
                Image(systemName: "person.crop.circle")
                Text("Profile")
                Spacer()
                Image(systemName: "chevron.right")
            }
            Text("Name")
            Text("Mail")
        })
            HStack{
                Image(systemName: "person")
                Text("User")
                Spacer()
                Image(systemName: "chevron.right")
            }
            Text("Id")
            Text("User Name")
        
        
        HStack{
            ForEach(items,id: \.self) { (item) in
                Image(systemName: item)
            }
    }
        }
        .listStyle(GroupedListStyle.init())
            
    }
}

struct SampleListView_Previews: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}
