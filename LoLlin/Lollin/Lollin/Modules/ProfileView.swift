//
//  ProfileView.swift
//  Lollin
//
//  Created by 박진형 on 2022/11/08.
//

import SwiftUI

struct ProfileView: View {
    @State private var date = Date()
    @State private var isClicked : Bool = false
    @State private var imageName : String = "heart"
    @State private var isToggled : Bool = false
    let selectedUser: User
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                HStack{
                    Image(selectedUser.userImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    Text(selectedUser.userName)
                        .font(Font.custom("RIXGOEB", size: 25))
                        .bold()
                    Spacer()
                    VStack {
                        Text("승리: \(selectedUser.win)")
                            .font(.custom("RIXGOEB", size: 20))
                        Text("패배: \(selectedUser.lose)")
                            .font(.custom("RIXGOB", size: 20))
                        // 여기 어떻게 할 지 다시 정하기
                    }
//                    Button(action: {
//                        if isClicked {
//                            imageName = "heart"
//                            isClicked = false
//                        } else {
//                            imageName = "heart.fill"
//                            isClicked = true
//                        }
//                    }) {
//                        Image(systemName: imageName)
//                            .resizable()
//                            .frame(width: 30, height: 30)
//                            .foregroundColor(Color.pink)
//                    }
                }
                
                HStack {
                    Image(selectedUser.userTier)
                        .resizable()
                        .frame(width: 100, height: 100)
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("\(selectedUser.userTier) 4")
                            .font(.largeTitle)
                            .bold()
                        Text("승급까지 85LP 남았습니다!")
                    }
                }.padding()
                
            
                
                VStack(){
                    Image("graph")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Toggle(isOn: self.$isToggled) {
                        Text("캘린더 확인하기")
                    }
                    ZStack {
                        Image("tracker").opacity(isToggled ? 0 : 1)
                        Image("lolCalendar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .opacity(isToggled ? 1 : 0)
                    }
                    
                }
            }.padding()
        }
    }
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView(selectedUser: userData[0])
        }
    }
}
