//
//  SullGameListView.swift
//  SojuMate
//
//  Created by Da Hae Lee on 2022/11/14.
//

import SwiftUI

struct SullGameListView: View {
    @State private var segmentationSelection = 0
    @State private var searchText = ""
    var title: String
    var symbolList: [String] = ["목록","즐겨찾기"]
    var gameArr: [String] = ["딸기 16비트", "좋아 게임", "베스킨라빈스31", "이중모션", "바니바니"]
    var descriptionArr: [String] = ["딸기 구호를 16비트 박자에 맞춰 딸기를 외치기!", "순발력도 운도 필요 없는 게임(인기 없는 사람 주의)", "귀엽고 깜찍하게 31~", "마시면서 배우는 술게임(뇌지컬, 피지컬 둘 다 요구)", "하늘에서 내려온 토끼가 하는 말~"]
    var imageArr: [String] = ["basic_icon", "thumb_icon", "icecream_icon", "twice_icon", "carrot_icon"]

    
    var body: some View {
        ZStack {
            Color("ThemeOrange")
                .ignoresSafeArea()
            VStack {
                Picker("", selection: $segmentationSelection) {
                    ForEach(0..<2, id:\.self) { index in
//                        Image(systemName: symbolList[index])
                        Text("\(symbolList[index])")
                    }
                }.pickerStyle(SegmentedPickerStyle())
                    .padding()
                ScrollView {
                    ForEach(0..<5) { index in
                        NavigationLink(destination: SullGameDetailView(gameTitle: gameArr[index])) {
                            switch segmentationSelection {
                            case 0:
                                ZStack{
                                    MaxCardView(gameTitle: gameArr[index], gameDescription: descriptionArr[index], gameImage: imageArr[index])
                                    if index < 1 {
                                        Image("hot")
                                            .resizable()
                                            .aspectRatio(contentMode:.fit)
                                            .frame(height: 70)
                                            .offset(x: -150, y: -70)
                                    } else if index == 3 {
                                        Image("good")
                                            .resizable()
                                            .aspectRatio(contentMode:.fit)
                                            .frame(height: 70)
                                            .offset(x: -150, y: -70)
                                    }
                                }
                            case 1:
                                MinCardView(gameTitle: gameArr[index])
                            default:
                                MaxCardView(gameTitle: gameArr[index], gameDescription: descriptionArr[index], gameImage: imageArr[index])
                            }
                        }
                    }
                }
            }
            .searchable(text: $searchText)
            //.toolbar {
//                ToolbarItem(placement:.navigationBarTrailing) {
//
//                    Button(action: {
//
//                    }){
//                        Image(systemName: "magnifyingglass")
//                            .foregroundColor(.black)
//                            .bold()
//                    }
//                }
            //}
        }
        
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.large)
    }
}

struct SullGameListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SullGameListView(title: "술범석")
            
        }
    }
}

struct MaxCardView: View {

    var gameTitle: String
    var gameDescription: String
    var gameImage: String
    
    var body: some View {
        ZStack {
            Image("card3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 30)
                .padding(.vertical)
            HStack {
                VStack() {
                    Text("\(gameTitle)")
                        .font(.title)
                        .bold()
                        .padding(.bottom, 5)
                        .foregroundColor(.black)
                        .frame(width:180, alignment: .leading)
                    Text("\(gameDescription)")
                        .foregroundColor(.gray)
                        .frame(width:180, alignment: .leading)
                }.padding()
                    .multilineTextAlignment(.leading)
                
                Image(gameImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80)
            }
        }
    }
}

struct MinCardView: View {
    var gameTitle: String
    
    var body: some View {
        ZStack {
            Image("card2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 30)
                .padding(.vertical,10)
            HStack {
                VStack(alignment: .leading) {
                    Text("\(gameTitle)")
                        .frame(width: 300, alignment: .leading)
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.black)
                }.padding()
            }
        }
    }
}
