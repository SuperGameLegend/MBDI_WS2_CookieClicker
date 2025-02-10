//
//  ContentView.swift
//  MBDI_WS2_CookieClicker
//
//  Created by Emre Sağır on 07/02/2025.
//

import SwiftUI

struct ContentView: View {
    @State var upgrade1bought = false
    @State var upgrade2bought = false
    @State var upgrade3bought = false
    @State var timerupgradebought =  false
    @State var timesClicked = 0
    @State var isShowingSheet = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var cookie =             Image("cookie").resizable(resizingMode: .stretch)
    var body: some View {
        VStack {
            Text("Cookie Clicker").font(.largeTitle)
            Button( action: {
                print("Clicked the cookie!")
                timesClicked += 1
                if(upgrade1bought){
                    timesClicked += 1
                }
                if(upgrade2bought){
                    timesClicked += 2
                }
                if(upgrade3bought){
                    timesClicked += 5
                }
                
            },
            label:{
                cookie.aspectRatio(contentMode: .fit)
    
            }
            )
            
            Text("You clicked the cookie " + String(timesClicked) + " times!")
            
                .sheet(isPresented:
                        $isShowingSheet, content: {StoreView(timesClicked: $timesClicked, upgrade1bought : $upgrade1bought, upgrade2bought: $upgrade2bought, upgrade3bought: $upgrade3bought,
                                                             timerupgradebought: $timerupgradebought)})
            
            Button( action: {
                isShowingSheet = true
            }
            , label:{Text("Go to Store")})
            
            if(upgrade1bought){
                Text("Upgrade 1 bought :)")
            }
            if(upgrade2bought){
                Text("Upgrade 2 bought :)")
            }
            if(upgrade3bought){
                Text("Upgrade 3 bought :)")
            }
            if(timerupgradebought){
                Text("Timer upgrade active :)") .onReceive(timer) {_ in
                    timesClicked += 10
                }
                
            }
            
            NavigationView {
                HStack{
                    NavigationLink(destination: StoreView(timesClicked: $timesClicked, upgrade1bought : $upgrade1bought, upgrade2bought: $upgrade2bought, upgrade3bought: $upgrade3bought,
                        timerupgradebought: $timerupgradebought)){
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
