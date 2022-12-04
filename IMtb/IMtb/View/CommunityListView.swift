//
//  CommunityListView.swift
//  IMtb
//
//  Created by BOMBSGIE on 2022/11/29.
//

import SwiftUI



struct CommunityListView: View {
    var postingArr: [Posting] = [
        Posting(title: "📌 [공지사항] ISFP 특징", contents: "", image: "istpinfo"),
        
        Posting(title: "ISFP 남자친구가 말을 안들어요 어떻게 해야할 까요?", contents: "헤어질 까요? 말까요?", image: ""),
        Posting(title: "님들 진짜 이럼?", contents: "??", image: "ISFP1"),
        Posting(title: "대박사건!! 님들 이거 암..? 내친구가 겪었던 얘기인데,,", contents: "안알려줌", image: ""),
        Posting(title: "님들 헤어질?말?", contents: "안알려줌", image: ""),
        Posting(title: "ISFP 친구 선물 뭐살까?", contents: "다 싫다고함", image: ""),
        Posting(title: "친구 집 밖에 나오게 하는 방법", contents: "님들 집에서 왜 안나옴?", image: ""),
        Posting(title: "ISFP와 친구되는 방법", contents: "제곧내", image: "")
    ]
    var body: some View {
        
        
        List {
            ForEach (postingArr, id: \.self) { posting in
                NavigationLink(destination: PostView()) {
                    HStack{
                        Text("\(posting.title)")
                        Spacer()
                        Image("\(posting.image)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                    }
                }
            }
        }
        .listStyle(.plain)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    PostWriteView()
                } label: {
                    
                    Image(systemName: "square.and.pencil")
                        .foregroundColor(Color("mint"))
                    
                }
                
                
            }
        }
        
    }
}

struct CommunityListView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityListView()
    }
}
