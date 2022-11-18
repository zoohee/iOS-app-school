//
//  MiniGameListView.swift
//  SojuMate
//
//  Created by Da Hae Lee on 2022/11/14.
//

import SwiftUI

struct MiniGameListView: View {
    var gameArray: [String] = ["룰렛", "사다리타기", "통아저씨", "짱깸뽀", "로또", "악어이빨"]
    var gameArray2: [String] = ["걸린 사람 마시기", "걸린 사람 마쇼마쇼", "통아저씨한테 칼 꽂기", "돈 벌기", "인생 한방", "손가락걸고 한판"]
    
    var body: some View {
        NavigationStack {
            ZStack {
                // 배경색
                Color("ThemeGreen")
                    .ignoresSafeArea()
                
                ScrollView {
                    ForEach(0..<gameArray.count, id:\.self) { index in
                        NavigationLink(destination: MiniGameView()) {
                            ZStack {
                                Image("card3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.horizontal, 30)
                                    .padding(.vertical, 6)
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text("\(gameArray[index])")
                                            .font(.title)
                                            .bold()
                                            .padding(.bottom, 5)
                                            .foregroundColor(.black)
                                        Text("\(gameArray2[index])")
                                            .foregroundColor(.gray)
                                            .frame(width:180, alignment: .leading)
                                    }.padding()
                                    
                                    Image("RPS_icon")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 70)
                                }
                            }
                        }
                    }
                }
                .navigationTitle(Text("미니게임"))
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }
}

struct MiniGameListView_Previews: PreviewProvider {
    static var previews: some View {
        MiniGameListView()
    }
}
