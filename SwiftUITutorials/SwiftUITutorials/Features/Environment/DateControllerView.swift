//
//  DateControllerView.swift
//  SwiftUITutorials
//
//  Created by Ebru Barış on 29.11.2022.
//

import SwiftUI

struct DateControllerView: View {
    @EnvironmentObject var userController: UserController
    var body: some View {
        Text(userController.currentDate.timeIntervalSince1970.description)
        Button("Reset"){
            userController.currentDate = Date.now
        }
    }
}

struct DateControllerView_Previews: PreviewProvider {
    static var previews: some View {
        DateControllerView()
    }
}
