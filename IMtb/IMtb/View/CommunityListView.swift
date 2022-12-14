//
//  CommunityListView.swift
//  IMtb
//
//  Created by BOMBSGIE on 2022/11/29.
//

import SwiftUI



struct CommunityListView: View {
    var postingArr: [Posting] = [
        Posting(title: "ð [ê³µì§ì¬í­] ISFP í¹ì§", contents: "", image: "istpinfo"),
        
        Posting(title: "ISFP ë¨ìì¹êµ¬ê° ë§ì ìë¤ì´ì ì´ë»ê² í´ì¼í  ê¹ì?", contents: "í¤ì´ì§ ê¹ì? ë§ê¹ì?", image: ""),
        Posting(title: "ëë¤ ì§ì§ ì´ë¼?", contents: "??", image: "ISFP1"),
        Posting(title: "ëë°ì¬ê±´!! ëë¤ ì´ê±° ì..? ë´ì¹êµ¬ê° ê²ªìë ìê¸°ì¸ë°,,", contents: "ììë ¤ì¤", image: ""),
        Posting(title: "ëë¤ í¤ì´ì§?ë§?", contents: "ììë ¤ì¤", image: ""),
        Posting(title: "ISFP ì¹êµ¬ ì ë¬¼ ë­ì´ê¹?", contents: "ë¤ ì«ë¤ê³ í¨", image: ""),
        Posting(title: "ì¹êµ¬ ì§ ë°ì ëì¤ê² íë ë°©ë²", contents: "ëë¤ ì§ìì ì ìëì´?", image: ""),
        Posting(title: "ISFPì ì¹êµ¬ëë ë°©ë²", contents: "ì ê³§ë´", image: "")
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
