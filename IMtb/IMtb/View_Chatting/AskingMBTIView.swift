//
//  AskingMBTIView.swift
//  IMtb
//
//  Created by 이주희 on 2022/11/29.
//

import SwiftUI

struct AskingMBTIView: View {
    
    let mbtiArray = ["INTP", "ISTP", "INTJ", "ISTJ",
                     "INFP", "ISFP", "INFJ", "ISFJ",
                     "ENTP", "ESTP", "ENTJ", "ESTJ",
                     "ENFP", "ESFP", "ENFJ", "ESFJ"]
    
    @State var selectedMBTI = "INTP"
    
    var body: some View {
    
            VStack {
                Text("상대방의 MBTI는?")
                    .font(.largeTitle)
                
                Picker("selected MBTI", selection: $selectedMBTI) {
                    ForEach(mbtiArray, id: \.self) {
                        Text($0)
                    }
                }.pickerStyle(.wheel)
                
                //Text("You selected: \(selectedMBTI)")
                
                NavigationLink("확인") {
                    AnwserView()
                }
            }
        
    }
    
    struct AskingMBTIView_Previews: PreviewProvider {
        static var previews: some View {
            AskingMBTIView()
        }
    }
}
