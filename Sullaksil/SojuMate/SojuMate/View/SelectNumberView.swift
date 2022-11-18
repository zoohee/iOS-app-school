//
//  SelectNumberView.swift
//  SojuMate
//
//  Created by Da Hae Lee on 2022/11/14.
//

import SwiftUI

struct SelectNumberView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // 배경색
                Color("ThemeOrange")
                    .ignoresSafeArea()
                VStack {
                    Image("SojuMateLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 215)
                        .padding(.top, 30)
                    Spacer()
                    
                    Text("게임 종류를 골라주세요.")
                        .font(.title)
                        .bold()
                        .padding()
                    
                    // FIXME: Grid뷰로 바꾸기
                    // grid뷰로 바꾸면 더 좋을 것 같다.
                    HStack {
                        NavigationLink {
                            SullGameListView(title: "운빨 게임")
                        } label: {
                            ZStack {
                                Image("card1")
                                    .resizable()
                                    .frame(width: 130, height: 130)
                                Text("운빨\n게임")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                            }
                        }.padding(5)
                        
                        NavigationLink {
                            SullGameListView(title: "피지컬 게임")
                        } label: {
                            ZStack {
                                Image("card1")
                                    .resizable()
                                    .frame(width: 130, height: 130)
                                Text("피지컬\n게임")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                            }
                        }
                        .padding(5)
                    }
                    
                    HStack {
                        NavigationLink {
                            SullGameListView(title: "왕 게임")
                        } label: {
                            ZStack {
                                Image("card1")
                                    .resizable()
                                    .frame(width: 130, height: 130)
                                Text("왕\n게임")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                            }
                        }
                        .padding(5)
                        
                        NavigationLink {
                            SullGameListView(title: "뇌지컬 게임")
                        } label: {
                            ZStack {
                                Image("card1")
                                    .resizable()
                                    .frame(width: 130, height: 130)
                                Text("뇌지컬\n게임")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                            }
                        }
                        .padding(5)
                    }
                    Spacer()
                    Spacer()
                }
            }
        }
    }
}



struct SelectNumberView_Previews: PreviewProvider {
    static var previews: some View {
        SelectNumberView()
    }
}
