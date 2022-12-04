//
//  BestInputFieldView.swift
//  IMtb
//
//  Created by greenthings on 2022/11/30.
//

import SwiftUI

struct BestInputFieldView: View {
    
    @ObservedObject var chattinglog: TalkLogStore
    @State private var text: String = ""
    @State private var flag: Int = 0
    // 사과먹고 싶다.
    // 아 이게  s의 대답인가요?
    let MessageArray = ["엇 S죠?", "현실에 초점이 맞추어진 대답인 것같아서요"]
 
    
    var body: some View {
        HStack{
            TextField("Input", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width:290,height: 80,alignment: .trailing)
            Button {

                    chattinglog.besttalklogs.append(TalkLog(Name: "Me", Message: text, Direction: TalkDirection.right, type: TalkMsgType.message))
                if flag == 0{
                    chattinglog.besttalklogs.append(TalkLog(Name: "", Message: MessageArray[flag], Direction: TalkDirection.left, type: TalkMsgType.message))
                    flag += 1
                }else if flag == 1{
                    chattinglog.besttalklogs.append(TalkLog(Name: "", Message:MessageArray[flag], Direction: TalkDirection.left, type: TalkMsgType.message))
                    flag += 1
                }else{
                    flag = 0
                }
                   

                    
                    text = ""
           
                //print(chattinglog.talklogs)
            } label: {
                Image(systemName: "paperplane")
                    .foregroundColor(Color("Main"))
            }
            .padding()

        }
    }
}

struct BestInputFieldView_Previews: PreviewProvider {
    static var previews: some View {
        BestInputFieldView(chattinglog:TalkLogStore())
    }
}
