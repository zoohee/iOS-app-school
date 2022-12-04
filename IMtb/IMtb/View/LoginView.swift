//
//  LoginView.swift
//  IMtb
//
//  Created by BOMBSGIE on 2022/11/29.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var userInfo: UserInfo
    @ObservedObject var mbtis: Mbtis
    
    @Binding var isStart: Bool
    // mbti입력 받을 텍스트필드에 바인딩 할 변수
    @State var selectedMbti: String = "ISTJ"
    
    var body: some View {
        VStack{
            Spacer()
            Text("IMtb")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color("mint"))
                .italic()
            
            Text("MBTI를 설정해주세요.")
                .padding()
                .font(.headline)
            
            Picker(selection: $selectedMbti, label: Text("당신의 MBTI를 설정해주세요")) {
                ForEach(mbtis.mbtiArr, id:\.self) {
                    Text($0)
                        .foregroundColor(Color("mint"))
                        .fontWeight(.heavy)
                }
            }
            .pickerStyle(.wheel)
            
            Text("선택된 MBTI는 \(selectedMbti)입니다.")
                .foregroundColor(Color("mint"))
                .fontWeight(.heavy)
        
            Spacer()
            Button(action: {
                isStart.toggle()
                userInfo.mbti = selectedMbti
                print("\(userInfo.mbti)")
            }) {
                ZStack{
                    Rectangle()
                        .frame(width:250, height: 50)
                        .cornerRadius(10)
                        .foregroundColor(Color("mint"))
                    Text("Start")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                }
            }
            Spacer()
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(userInfo: UserInfo(), mbtis: Mbtis(), isStart: .constant(true))
            .environmentObject(UserInfo())
    }
}
