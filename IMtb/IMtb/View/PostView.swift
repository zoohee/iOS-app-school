//
//  PostView.swift
//  IMtb
//
//  Created by 오수현 on 2022/11/29.
//

import SwiftUI

struct PostView: View {
    @State private var likeButton: Bool = false
    @State private var commentsButton: Bool = false
    @State private var sirenButton: Bool = false
    
    
    var body: some View {
        VStack {
            
            Text("제목:님들 진짜 이럼?")
                .font(.title)
            
            
            Divider()
            Image("ISFP1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            Text("님들 여기서 몇개 맞음? 나도 ISFP인데 다 맞는 듯.")
                .padding()
            Spacer()
            
            Divider()
            
            
            HStack{
                Spacer()
                Button(action: {
                    commentsButton.toggle()
                }){
                    Image(systemName: "ellipsis.message")
                        .font(.title2)
                    
                }
                .sheet(isPresented: $commentsButton){
                    Text("댓글 창")
                        .presentationDetents([.medium, .large])
                    
                }
                .padding(.horizontal, 10)
                Button(action: {
                    likeButton.toggle()
                }){
                    Image(systemName: likeButton ? "hand.thumbsup.fill" : "hand.thumbsup")
                        .font(.title2)
                    
                }
            }
            .padding(.trailing,10)
            
        
            Divider()
            
            VStack(alignment:.trailing) {
     
                HStack {
                    Text("익병의 ISFP:")
                        .bold()
                    Text("ㄴㄴ 다 다름 이거 구라인듯;")
                }
                
                
            }
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement:.navigationBarTrailing) {
                
                Button(action: {
                    sirenButton.toggle()
                }){
                    Image(systemName: "light.beacon.max")
                        .foregroundColor(.red)
                }
            
                .sheet(isPresented: $sirenButton) {
                    Text("신고 창")
                        .presentationDetents([.fraction(0.85)])
                }
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
