//
//  NavigationUserModel.swift
//  SwiftUITutorials
//
//  Created by Ebru Barış on 27.11.2022.
//

import Foundation
struct NavigationUserModel {
    let id: UUID = UUID()
    let name: String
}

extension NavigationUserModel{
    
    
    /// Samples navigation user model
    static let samples = [
        NavigationUserModel(name: "V"),
        NavigationUserModel(name: "V1"),
        NavigationUserModel(name: "V2"),
        NavigationUserModel(name: "V3")
    ]
}
