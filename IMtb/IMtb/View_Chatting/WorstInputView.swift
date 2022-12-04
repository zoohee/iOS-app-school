//
//  WorstInputView.swift
//  IMtb
//
//  Created by greenthings on 2022/12/01.
//

import SwiftUI

struct WorstInputView: View {
    
    @ObservedObject var chattinglog: TalkLogStore
    @State private var text: String = ""
    @State private var flag: Int = 0

    let MessageArray = ["엇 S죠?", "현실에 초점이 맞추어진 대답인 것같아서요"]
 
    var body: some View {
        HStack{
            TextField("Input", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width:290,height: 80,alignment: .trailing)
            Button {

                    chattinglog.worsttalklogs.append(TalkLog(Name: "Me", Message: text, Direction: TalkDirection.right, type: TalkMsgType.message))
                if flag == 0{
                    chattinglog.worsttalklogs.append(TalkLog(Name: "", Message: MessageArray[flag], Direction: TalkDirection.left, type: TalkMsgType.message))
                    flag += 1
                }else if flag == 1{
                    chattinglog.worsttalklogs.append(TalkLog(Name: "", Message:MessageArray[flag], Direction: TalkDirection.left, type: TalkMsgType.message))
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

//struct WorstInputView_Previews: PreviewProvider {
//    static var previews: some View {
//        WorstInputView()
//    }
//}
