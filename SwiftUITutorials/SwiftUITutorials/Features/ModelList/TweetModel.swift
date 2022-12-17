//
//  TweetModel.swift
//  SwiftUITutorials
//
//  Created by Ebru Barış on 27.11.2022.
//

import Foundation


struct TweetModel: Identifiable {
    var id: UUID = UUID()
    let userName: String
    var body: String
    var likeCount: Int?
}

extension TweetModel {
    static let tweets = [
      TweetModel(userName: "vb1", body: "hello1", likeCount: 10),
      TweetModel(userName: "vb2", body: "hello2", likeCount: 10),
      TweetModel(userName: "vb3", body: "hello3", likeCount: 10)
    ]
    
    
    static let faketweet = TweetModel(userName: "vb1", body: "hello1", likeCount: 10)
}

