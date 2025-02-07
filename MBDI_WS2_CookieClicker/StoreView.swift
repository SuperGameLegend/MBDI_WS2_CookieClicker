//
//  StoreView.swift
//  MBDI_WS2_CookieClicker
//
//  Created by Emre Sağır on 07/02/2025.
//

import SwiftUI

struct StoreView : View{
    @Binding var timesClicked: Int
    var body: some View {

        Text(String(timesClicked))
    }
}

#Preview {
    StoreView(timesClicked: .constant(10))
}
