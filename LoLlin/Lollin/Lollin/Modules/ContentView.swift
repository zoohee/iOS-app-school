//
//  ContentView.swift
//  Lollin
//
//  Created by 박진형 on 2022/11/03.
//

import SwiftUI

struct ContentView: View {
    @State var summonerName: String = ""
    let selectedUser: User
    
    var body: some View {
        TabView{
            NavigationView{
                ZStack {
                    VStack {
                        Image("background2")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                            .opacity(0.8)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.cyan]), startPoint: .top, endPoint: .bottom))
                        
                        Spacer()
                            .frame(width: 10)
                    }
                    
                    VStack {
                        Spacer()
                        Image("logo")
                            .resizable()
                            .frame(width: 220, height: 220)
                        
                        TextField("소환사 이름", text: $summonerName)
                            .padding()
                            .frame(height: 70)
                            .background(Color.lightgray)
                            .cornerRadius(10)
                            .shadow(color: .darkgray , radius: 10)
                            .font(Font.custom("RIXGOEB", size: 18))
                        
                        NavigationLink("검색") {
                            ProfileView(selectedUser: selectedUser)
                        }
                        .font(Font.custom("RIXGOEB", size: 20))
                        .font(.title2)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, minHeight: 62)
                        .background(Color.brown)
                        .cornerRadius(10)
                        .padding(EdgeInsets(top: 20, leading: 0, bottom: 10, trailing: 0))
                        
                        NavigationLink("알림 시연 영상 보기") {
                            AlertView()
                        }
                        .font(Font.custom("RIXGOEB", size: 18))
                        .foregroundColor(Color.white)
                        .frame(width: 180, height: 44)
                        .background(Color.gray.opacity(0.5))
//                        .cornerRadius(50)
                        .clipShape(Capsule())
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    .offset(y: 30)
                    .padding()
                }
            }.tabItem {
                Text("메인")
                    .font(.largeTitle)
                Image(systemName: "house.fill")
            }.tag(1)
            FriendView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("친구")
                }.tag(2)
            ProfileView(selectedUser: userData[0]).tabItem {
                Image(systemName: "person.crop.circle")
                Text("프로필") }.tag(3)
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color.white.opacity(1))
            
            // Use this appearance when scrolling behind the TabView:
            UITabBar.appearance().standardAppearance = appearance
            // Use this appearance when scrolled all the way up:
            UITabBar.appearance().scrollEdgeAppearance = appearance
            for family: String in UIFont.familyNames {
                print(family)
                for names : String in UIFont.fontNames(forFamilyName: family){
                    print("=== \(names)")
                }
            }
        }
        .accentColor(.darkgray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedUser: userData[1])
    }
}
