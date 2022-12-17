//
//  EnvironmentView.swift
//  SwiftUITutorials
//
//  Created by Ebru Barış on 29.11.2022.
//

import SwiftUI


struct EnvironmentView: View {
    @Environment(\.verticalSizeClass) var verticalSize
    @StateObject var userController = UserController()
    
    var body: some View {
        
        NavigationView {
            VStack{
                Text(userController.currentDate.description)
                
                HStack {
                    verticalSize == .regular ? Spacer.minVerticalHigh :
                    Spacer.minVertical
                    //DatePicker(selection: .constant(Date()), label: {Text("Date")})
                    DatePicker(selection: $userController.currentDate, label: {Text("Date")})
                    verticalSize == .regular ? Spacer.minVerticalHigh :
                    Spacer.minVertical
                }
                NavigationLink{
                    DateControllerView()
                }label: {
                    Text("Normal View")
                }
            }
        }.environmentObject(userController)
      
    }
}

class UserController: ObservableObject {
    @Published var currentDate: Date = Date()
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            EnvironmentView()
            if #available(iOS 15.0, *){
                EnvironmentView()
                    .previewInterfaceOrientation(.landscapeLeft)
            }else{
                // Fallback on earlier versions
            }
        }
    }
}
