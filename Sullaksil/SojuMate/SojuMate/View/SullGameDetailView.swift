//
//  SullGameDetailView.swift
//  SojuMate
//
//  Created by Da Hae Lee on 2022/11/14.
//

import SwiftUI

struct SullGameDetailView: View {
    @State private var isPressed: Bool = false
    var gameTitle = ""
    
    var body: some View {
        ZStack {
            Color("ThemeOrange")
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    Image("card2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Text("\(gameTitle)")
                        .font(.title)
                        .bold()
                }
                .padding(.horizontal)
                .padding(.bottom, -10)
                
                List {
                    // 제목칸(ㅠㅠ 살려야대)
                    
                    // FIXME: 텍스트 정렬 수정해라!
                    Section(header: Text("설명").font(.system(size: 24)).foregroundColor(.black).fontWeight(.heavy).padding(.leading, -15)) {
                        Text("""
                        기존 딸기 게임이 한 방향으로 돌아가는거라면 포인트딸기는 무작위 사람에게 순서를 넘긴다는 것이 특징. 동작은 4박자 치기에서 약간 변형된다.
                         
                        1. 양손으로 허벅지 치기
                         2. 박수치기
                         3. 왼손 최고표시
                         4. 무작위 사람 지목
                        
                        이 동작을 해보면 ④번이 상당히 까다로운데 ③박자 때 오른쪽 팔꿈치를 뒤로 빼면 동작이 부드러워진다.
                        """)
                        .multilineTextAlignment(.leading)
                        .padding()
                    }
                    
                    
                    Section(header: Text("게임 시연 영상").font(.system(size: 24)).foregroundColor(.black).fontWeight(.heavy).padding(.leading, -15)) {
                        
                        VideoView(videoID: "bRGQB3KTY3U")
                            .frame(height: 240)
                    }
                    
                    Section(header: Text("어울리는 술").font(.system(size: 24)).foregroundColor(.black).fontWeight(.heavy).padding(.leading, -15)) {
                        HStack {
                            Text("🍹")
                                .font(.system(size: 50))
                            VStack(alignment: .leading, spacing: 5) {
                                Text("맥주 (도수: 5%)")
                                    .font(.headline)
                                Text("살짝 알딸딸하고 가벼운 분위기!")
                            }
                        }
                    }
                    
                }
                .scrollContentBackground(.hidden)
                .padding(.bottom, 30)
            }
            .toolbar {
                ToolbarItem(placement:.navigationBarTrailing) {
                    Button(action: {
                        isPressed.toggle()
                    }){
                        Image(systemName: isPressed ? "heart.fill" : "heart")
                            .font(.title2)
                            .foregroundColor(.red)
                            .bold()
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SullGameDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SullGameDetailView()
        }
    }
}
