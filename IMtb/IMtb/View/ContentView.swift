//
//  ContentView.swift
//  IMtb
//
//  Created by greenthings on 2022/11/29.
//

import SwiftUI

struct ContentView : View {
    @EnvironmentObject var userInfo: UserInfo
    
    @State var isStart: Bool = true
    @State var badisShowing: Bool = false
    
    var body: some View {
        NavigationView{
            TabView {
                SelectView(badisShowing: $badisShowing)
                    .tabItem {
                        Image(systemName: "person.line.dotted.person.fill")
                        Text("대화하기")
                    }
                CommunityCategorySideBar(mbtis: Mbtis())
                    .tabItem {
                        Image(systemName: "figure.socialdance")
                        Text("커뮤니티")
                    }
                Profile()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("내 프로필")
                    }
                
            }
            .font(.headline)
            .fullScreenCover(isPresented: $isStart) {
                LoginView( userInfo: userInfo, mbtis: Mbtis(), isStart: $isStart)
                
            }
            .fullScreenCover(isPresented: $badisShowing) {
                EvaluationView(badisShowing: $badisShowing)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserInfo())
    }
}
