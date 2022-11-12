//
//  ContentView.swift
//  Lollin
//
//  Created by 박진형 on 2022/11/03.
//

import SwiftUI
import ActivityKit

struct ContentView: View {
    @State var summonerName: String = ""
    let selectedUser: User
    
    var body: some View {
        TabView{
            NavigationView{
                ZStack {
                    Image("background2")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.8)
                    VStack {
                        Spacer()
                        Image("logo")
                            .resizable()
                            .frame(width: 200, height: 200)
                        
                        TextField("소환사 이름", text: $summonerName)
                            .padding()
                            .frame(height: 70)
                            .background(Color.lightgray)
                            .cornerRadius(10)
                            .shadow(color: .lightred , radius: 100)
                            .font(Font.custom("RIXGOL", size: 18))
                        
                        Text("\(summonerName)")
                            .font(Font.custom("rix모던고딕b", size: 18))

                        
                        NavigationLink("검색") {
                            ProfileView(selectedUser: selectedUser)
                        }
                        .foregroundColor(Color.brown)
                        .frame(width: 50, height: 30)
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        Spacer()
                        Button("전적확인하기") {
                            startTrip()
                        }
                        .setButtonLook()
                        Spacer()
                    }
                    .padding()
                }
            }.tabItem {
                Image(systemName: "house.fill")
                Text("메인")
                    .font(.title)
            }.tag(1)
            FriendView().tabItem {
                Image(systemName: "person.3.fill")
                Text("친구")
            }.tag(2)
            ProfileView(selectedUser: userData[1]).tabItem {
                Image(systemName: "person.crop.circle")
                Text("프로필") }.tag(3)
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color.white.opacity(0.01))
            
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
        .accentColor(.black)
    }
    
    func startTrip() {
        let liveTripAttributes = LiveTripDemoAttributes()
        let tripStatus = LiveTripDemoAttributes.TripStatus(value: 50)
        do{
            let tripActivity = try Activity<LiveTripDemoAttributes>.request(
                attributes: liveTripAttributes,
                contentState: tripStatus)
            print("Did request live trip activity \(tripActivity.id)")
        }catch(let error){
            print("Error requesting live activity \(error.localizedDescription)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedUser: userData[0])
    }
}
