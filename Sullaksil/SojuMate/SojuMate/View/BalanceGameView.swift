//
//  PubMapView.swift
//  SojuMate
//
//  Created by Da Hae Lee on 2022/11/14.
//

import SwiftUI

struct BalanceGameView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // 배경색
                Color("ThemePurple")
                    .ignoresSafeArea()
                VStack {
                    // balance game selection 1
                    Button(action: {
                        // 애니메이션 넣죠
                    }) {
                        Image("card3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 165)
                            .overlay(
                                Text("내 애인이 남(여)사친과 1박2일 여행")
                                    .font(.title3)
                                    .foregroundColor(.black)
                                    .bold()
                            )
                            
                    }
                    Text("VS")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding()
                    // balance game selection 2
                    Button(action: {
                        // 애니메이션 넣죠
                    }) {
                        Image("card3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 165)
                            .overlay(
                                Text("내 애인이 ex와 밤새 술 마시기")
                                .font(.title3)
                                .foregroundColor(.black)
                                .bold()
                            )
                    }
                }
                .navigationTitle(Text("밸런스 게임"))
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }
}

struct PubMapView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceGameView()
    }
}
