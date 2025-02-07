//
//  ContentView.swift
//  MBDI_WS2_CookieClicker
//
//  Created by Emre Sağır on 07/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Cookie Clicker").font(.largeTitle)
            Button( action: {
                print("Clicked on the cookie!")
            },
            label:{
                Image("cookie").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fit)
            }
            )
            Text("Click on the cookie!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
