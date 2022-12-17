//
//  RandomFoxView.swift
//  SwiftUITutorials
//
//  Created by Ebru Barış on 2.12.2022.
//

import SwiftUI

struct RandomFoxView: View {
    private let title: String = "My Fox"
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.largeTitle)
                Spacer()
                Button("Refresh") {
                    Action
                }
            }.padding(.all)
            Spacer()
            KFImage(URL(string: "https:\/\/randomfox.ca\/images\/45.jpg"))
        }
    }
}

struct RandomFoxView_Previews: PreviewProvider {
    static var previews: some View {
        RandomFoxView()
    }
}
