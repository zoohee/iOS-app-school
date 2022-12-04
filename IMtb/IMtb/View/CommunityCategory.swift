//
//  CommunityCategory.swift
//  IMtb
//
//  Created by 박시현 on 2022/11/29.
//

import SwiftUI

struct CommunityCategory: View {
    
    
    @ObservedObject var mbtis: Mbtis
    
    let columns: [GridItem] = [
        GridItem(.flexible(minimum: 50), spacing: -65),
        GridItem(.flexible(minimum: 50), spacing: -65),
        GridItem(.flexible(minimum: 50), spacing: -65),
        GridItem(.flexible(minimum: 50), spacing: -65)
    ]
//
//    let mbtis: [String] = ["ISTJ", "ISTP", "INFJ", "INTJ", "ISFJ", "ISFP", "INFP", "INTP", "ESTJ", "ESFP", "ENFP", "ENTP", "ESFJ", "ESTP", "ENFJ", "ENTJ"]
    
    
    var body: some View {
        ZStack {
            Color("mint")
                .ignoresSafeArea()
            VStack{
                Text("IMtb 대나무 숲")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                NavigationStack {
                    
                    Text("카테고리를 선택해주세요!")
                  
                    

                   // ScrollView {
                        LazyVGrid(columns: columns, spacing: 10) {
                            
                            ForEach(mbtis.mbtiArr, id: \.self) { mbti in
                                NavigationLink(destination: CommunityListView()) {
                                    ZStack {

                                        Circle()
//                                            .stroke(Color("mint"), lineWidth: 4)
                                            .foregroundColor(Color("mint"))
                                            .frame(width: 100, height: 80)
                                        Text(mbti)
                                            .font(.system(size: 24))
                                            .foregroundColor(.white)
                                            .fontWeight(.heavy)
                                    }
                                }
                                
                            }
                        }
                    //}
                    .padding(.bottom, 20)
                    
//                  .navigationTitle(Text("IMtb 대나무 슾"))
          
                }
            }
        }
    }
}

struct CommunityCategory_Previews: PreviewProvider {
    static var previews: some View {
        CommunityCategory(mbtis: Mbtis())
    }
}
