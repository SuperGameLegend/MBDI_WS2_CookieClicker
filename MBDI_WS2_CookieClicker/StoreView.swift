//
//  StoreView.swift
//  MBDI_WS2_CookieClicker
//
//  Created by Emre Sağır on 07/02/2025.
//

import SwiftUI

struct StoreView : View{
    @Binding var timesClicked: Int
    @Binding var upgrade1bought : Bool
    @Binding var upgrade2bought : Bool
    @Binding var upgrade3bought : Bool
    @Binding var timerupgradebought : Bool
    
    var body: some View {
        Text("You have " + String(timesClicked) + " cookies")
        
        if(!upgrade1bought){
            Button( action: {
                if(timesClicked >= 20 ){
                    timesClicked -= 20
                    upgrade1bought = true
                }
                
            }, label:{Text("Upgrade 1: 20 cookies")})
        }
        
        if(!upgrade2bought){
            Button( action: {
                if(timesClicked >= 100 ){
                    timesClicked -= 100
                    upgrade2bought = true
                }
                
            }, label:{Text("Upgrade 2: 100 cookies")})
        }
        
        if(!upgrade3bought){
            Button( action: {
                if(timesClicked >= 200 ){
                    timesClicked -= 200
                    upgrade3bought = true
                }
                
            }, label:{Text("Upgrade 3: 200 cookies")})
        }
        
        if(!timerupgradebought){
            Button( action: {
                if(timesClicked >= 500 ){
                    timesClicked -= 500
                    timerupgradebought = true
                }
                
            }, label:{Text("Timer upgrade: 500 cookies")})
        }
        
        if(upgrade1bought && upgrade2bought && upgrade3bought && timerupgradebought){
            Text("All upgrades bought :D!")
        }
        
    }
}

#Preview {
    StoreView(timesClicked: .constant(0), upgrade1bought: .constant(false), upgrade2bought: .constant(false), upgrade3bought: .constant(false),
              timerupgradebought: .constant(false))
}
