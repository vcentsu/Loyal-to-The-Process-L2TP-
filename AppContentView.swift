//
//  AppContentView.swift
//  WWDC2022 Centsu
//
//  Created by Vincentius Sutanto on 22/04/22.
//

import SwiftUI

struct AppContentView: View {
    @State var isClickPlayBtn = false
    
    var body: some View {
        return Group {
            if (isClickPlayBtn) {
                GameplayView(isClickPlayBtn: $isClickPlayBtn)
            }
            else {
                ContentView(isClickPlayBtn: $isClickPlayBtn)
                }
            }
    }
}

struct AppContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppContentView()
    }
}
