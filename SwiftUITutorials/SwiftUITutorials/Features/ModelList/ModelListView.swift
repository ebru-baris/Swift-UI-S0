//
//  ModelListView.swift
//  SwiftUITutorials
//
//  Created by Ebru Barış on 27.11.2022.
//

import SwiftUI

struct ModelListView: View {
    var body: some View {
        VStack {
            Text("Welcome List")
                .font(.largeTitle)
            .fontWeight(.light)
            
            List(TweetModel.tweets) { data in
                TweetCards(tweet:data)
            }.listStyle(.sidebar)
        }
    }
}

struct ModelListView_Previews: PreviewProvider {
    static var previews: some View {
        ModelListView()
    }
}
