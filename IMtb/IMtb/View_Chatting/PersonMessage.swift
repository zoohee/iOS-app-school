//
//  PersonMessage.swift
//  Chatting
//
//  Created by greenthings on 2022/11/28.
//

import SwiftUI

struct PersonMessage: View {
    
    var Name: String
    var ImgName: String
    var Message: String
    var Direction: TalkDirection
    var type: TalkMsgType
    
    init(Name: String, ImgName: String, Message: String, Direction: TalkDirection, type: TalkMsgType) {
        self.Name = Name
        self.ImgName = "person.fill"
        self.Message = Message
        self.Direction = Direction
        self.type = type
    }
    
    
    var body: some View {
        HStack() {
            if self.Direction == TalkDirection.left{
                LeftPerson
            }else{
                RightPerson
            }
        }
        .edgesIgnoringSafeArea([.trailing,.leading])
  
    }
}



extension PersonMessage{
    
    var LeftPerson: some View{
        HStack(){
            VStack{
                Image(systemName: self.ImgName)
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
                //Text(self.Name)
            }
            HStack{
                Text(self.Message)
                    .padding(.leading,20)
                    .frame(width: 200, height: 50, alignment: .leading)
                    .background(
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(Color("SeletedGray"))
                    )
          
                
                Spacer()
            }
        }
        .padding([.leading])
    }
}


extension PersonMessage{
    
    var RightPerson: some View{
        HStack(){
            Spacer()
            Text(self.Message)
                .foregroundColor(.white)
                .padding(.trailing,20)
                .frame(width:200, height: 50, alignment: .trailing)
                .background(
                    RoundedRectangle(cornerRadius: 40)
                        .foregroundColor(Color("mint"))
                )
                .padding(.trailing, 20)
        }
        
    }
}




struct PersonMessage_Previews: PreviewProvider {
    static var previews: some View {
        PersonMessage(Name: "Tim", ImgName: "figure.wave", Message: "Hello There", Direction: TalkDirection.right, type: TalkMsgType.message)
        PersonMessage(Name: "Tim", ImgName: "figure.wave", Message: "Hello There!!", Direction: TalkDirection.left, type: TalkMsgType.message)
    }
}
