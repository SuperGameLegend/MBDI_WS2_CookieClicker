//
//  ContentView.swift
//  MBDI_WS2_CookieClicker
//
//  Created by Emre Sağır on 07/02/2025.
//

import SwiftUI

struct ContentView: View {
    @State var timesClicked = 0
    var cookie =             Image("cookie").resizable(resizingMode: .stretch)
    var body: some View {
        VStack {
            Text("Cookie Clicker").font(.largeTitle)
            Button( action: {
                print("Clicked the cookie!")
                timesClicked += 1
                
            },
            label:{
                cookie.aspectRatio(contentMode: .fit)
    
            }
            )
            Text("You clicked the coockie " + String(timesClicked) + " times!")
            
            NavigationView {
                HStack{
                    NavigationLink(destination: StoreView(timesClicked: .constant(10))){
                        Text("Store")
                        
                    }
                    
                    NavigationLink(destination: SwiftUIView()) { Text("Credits")
                    }
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
