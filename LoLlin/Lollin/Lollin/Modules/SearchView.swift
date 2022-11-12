//
//  SearchView.swift
//  Lollin
//
//  Created by 박진형 on 2022/11/03.
//

import SwiftUI

struct SearchView: View {
    var searchSource: String
    init(searchSource: String) {
        self.searchSource = searchSource
    }
    
    var body: some View {
        VStack {
            Text("\(searchSource) 검색결과")
            List{
                HStack{
                    Image("profileIcon4656")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    Text("절망노력극복성공")
                        .bold()
                    Spacer()
                    Image(systemName: "heart.fill")
                        .foregroundColor(Color.red)
    
                }
                HStack{
                    Image("profileIcon984")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    Text("절망좌절노력극복")
                        .bold()
                    Spacer()
                    Image(systemName: "heart")
                        .foregroundColor(Color.red)
    
                }
            }
        }      
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchSource: "절망")
    }
}
