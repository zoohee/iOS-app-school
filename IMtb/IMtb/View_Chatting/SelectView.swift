//
//  SelectView.swift
//  Chatting
//
//  Created by greenthings on 2022/11/29.
//

import SwiftUI

struct SelectView: View {
    

    @Binding var badisShowing: Bool
    
    
    var body: some View {
       
        NavigationStack{
            VStack{
                
                Image("icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:200,height: 200)
                    
                
                Text("MBTI를 통한 세상과의 연결고리")
                    .foregroundColor(.gray)
                    //.font(.subheadline)
                    .padding(.top, -30)
                
                Text("원하는 대화를 선택하세요!")
                    .font(.title3)
                    .frame(width:400, height: 90)
                    .fontWeight(.heavy)
                    .aspectRatio(contentMode: .fit)
                    .padding(.top,30)
                
                NavigationLink {
                    ChattingView()
                } label: {
                    HStack{
                        Image(systemName: "person.crop.circle.badge.questionmark")
                            .resizable()
                            .frame(width: 30,height: 30)
                        Text("MBTI 맞추기")
                    }
                    .foregroundColor(.white)
                    .frame(width: 200, height: 80)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("mint"))
                    )
                }
                
                NavigationLink {
                    BestView()
                } label: {
                    HStack{
                        Image(systemName: "heart.circle")
                            .resizable()
                            .frame(width: 30,height: 30)
                        Text("최상의 궁합")
                    }
                    .foregroundColor(.white)
                    .frame(width: 200, height: 80)
                    .background(RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("mint"))
                    )
                }
                
                NavigationLink {
                    WorstView(badisShowing:$badisShowing)
                } label: {
                    HStack{
                        Image(systemName: "heart.slash.circle")
                            .resizable()
                            .frame(width: 30,height: 30)
                        Text("최악의 궁합")
                    }
                    .foregroundColor(.white)
                    .frame(width: 200, height: 80)
                    .background(RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("mint")))
                }
            }
            

        }

    }
}

//struct SelectView_Previews: PreviewProvider {
//    static var previews: some View {
//        SelectView()
//    }
//}
