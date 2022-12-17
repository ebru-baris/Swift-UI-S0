//
//  ContentView.swift
//  SwiftUITutorials
//
//  Created by Ebru Barış on 24.11.2022.
//

import SwiftUI


struct IconFieldView: View {
    
    var iconName: String = "Hello"
    @State var textFieldValue: String = ""
    
    var body: some View {
        VStack{
            TextField("placeholder", text: $textFieldValue)
            Text(textFieldValue)
                .bold()
                .font(.largeTitle)
            
           // Image(systemName: "moon.stars.fill").resizable().frame(width: 40, height: 40)
            Image(systemName: textFieldValue.lowercased()).resizable().frame(width: 40, height: 40)
        }
    }
}


struct ContentView: View {

    var body: some View {
        Color.blue
    }
     
    
    
    
    //yatay
    fileprivate func sampleHorizantalView() -> some View{
        return HStack{
            Spacer()
            Text("Korea")
                .padding()
            Text("Japan")
                .padding()
            Text("Turkey")
                .padding()
            Color.red
            Spacer()
        }
    }
    //Dikey
    fileprivate func sampleVerticalView() -> some View{
        return VStack{
            Spacer()
            Text("Korea")
                .padding()
            Text("Japan")
                .padding()
            Text("Turkey")
                .padding()
            Color.red
            Spacer()
        }
    }
    //üst üste
    fileprivate func sampleStackView() -> some View{
        return ZStack(alignment: Alignment.bottom){
            Spacer()
            Color.red
            Text("Korea")
                .padding()
            Text("Japan")
                .padding()
            Text("Turkey")
                .padding()
           
            Spacer()
        }
    }
    
    
}

fileprivate func demoViev() -> some View {
    return
    VStack{
        Spacer()
        Rectangle().frame(width: 100 , height: 100, alignment: .center)
        Circle().foregroundColor(.red).frame(height: 100, alignment: .center)
        Text("Sampole1")
        Text("Sampole2")
        Text("Sampole3")
        Spacer()
        HStack{
            Spacer()
            RoundedRectangle(cornerRadius: 25.0).frame(height: 150,alignment: .center)
            Spacer(minLength: 50)
            ZStack{
                Circle()
                // Text("Hello ").foregroundColor(.white)
                Text("Hello").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0))
            }
            Spacer()
        }
        Spacer()
    }
}
    fileprivate func groupViews() -> some View {
        VStack{
            Group{
                VStack{
                    Text("Hello")
                        .accentColor(.blue)
                        .font(.callout)
                }.frame(width: 100, height: 100, alignment: .center).background(Color(.green))
            }
            Group{
                Image(systemName:"sun.max.fill").foregroundColor(.orange)
                
                VStack{
                    Text("Hello2")
                        .foregroundColor(.black)
                        .opacity(0.8)
                }.frame(width: 100, height: 100, alignment: .center).background(Color(.green))
            }
            
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        IconFieldView()
    }
}

