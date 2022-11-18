//
//  ContentView.swift
//  SojuMate
//
//  Created by Da Hae Lee on 2022/11/14.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color("TabbarColor"))
    }
     
    var body: some View {
        TabView {
            SelectNumberView().tabItem {
                Image("tab1")
            }.tag(1)
            BalanceGameView().tabItem {
                Image("tab2")
            }.tag(2)
            MiniGameListView().tabItem {
                Image("tab3")
            }.tag(3)
        }
        .onAppear() {
            UITabBar.appearance().barTintColor = UIColor(Color("TabbarColor"))
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
