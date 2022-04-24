//
//  GameplayView.swift
//  WWDC2022 Centsu
//
//  Created by Vincentius Sutanto on 22/04/22.
//

import SwiftUI

struct GameplayView: View {
    @Binding var isClickPlayBtn : Bool
    var body: some View {
        TabView{
            GameOneView()
                .tabItem {
                    Label("One", systemImage: "1.circle.fill")
                }
            GameTwoView()
                .tabItem {
                    Label("Two", systemImage: "2.circle.fill")
                }
            LastView(isClickPlayBtn: $isClickPlayBtn)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
        }
    }
}

//struct GameplayView_Previews: PreviewProvider {
//    static var previews: some View {
//        GameplayView()
//    }
//}
