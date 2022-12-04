//
//  InputFieldView.swift
//  Chatting
//
//  Created by greenthings on 2022/11/28.
//

import SwiftUI

struct InputFieldView: View {
    
    @ObservedObject var chattinglog: TalkLogStore
    @State private var text: String = ""
    @State private var flag: Int = 0
    let MessageArray = ["아니에요 ㅎㅎ", "맞춰봐요 ㅎㅎ"]
 
    
    var body: some View {
        HStack{
            TextField("Input", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width:290,height: 80,alignment: .trailing)
            Button {
                
                
                // 사용자가 입력한 것

                    chattinglog.talklogs.append(TalkLog(Name: "Me", Message: text, Direction: TalkDirection.right, type: TalkMsgType.message))
                
                
                // 상대방이 입력한 것
                // 매크로
                
                
                if flag == 0{
                    chattinglog.talklogs.append(TalkLog(Name: "", Message: MessageArray[flag], Direction: TalkDirection.left, type: TalkMsgType.message))
                    flag += 1
                }else if flag == 1{
                    chattinglog.talklogs.append(TalkLog(Name: "", Message:MessageArray[flag], Direction: TalkDirection.left, type: TalkMsgType.message))
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

struct InputFieldView_Previews: PreviewProvider {
    static var previews: some View {
        InputFieldView(chattinglog:TalkLogStore() )
    }
}
