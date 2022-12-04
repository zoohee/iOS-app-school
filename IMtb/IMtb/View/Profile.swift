//
//  Profile.swift
//  IMtb
//
//  Created by 박시현 on 2022/11/29.
//

import SwiftUI

struct Profile: View {
    
    @EnvironmentObject var userInfo: UserInfo
    
    @State private var changeMBTI: Bool = false
    
    @State private var ttabongColor: String = "mint"
    
    @State private var sliderVal: Double = 0
    
    @State private var  isEditing:Bool = false
    
    var body: some View {
        
        VStack {
            
            Text("MBTI: \(userInfo.mbti)")
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .padding(.top,30)
            
            
            Text("\(userInfo.nickname)")
                .font(.headline)
                .padding()
            
            Divider()
                .overlay(.black)
            
            
            //            HStack{
            //                Image(systemName: "hand.thumbsup.fill")
            //                Text("당신의 최고의 궁합: ISTP, ENTP")
            //            }
            //            HStack{
            //                Image(systemName: "hand.thumbsdown.fill")
            //                Text("당신의 최악의 궁합: ESTP, ESTP")
            //            }
            
            //            HStack(spacing: 10){
            //                VStack{
            //                Text("최고의 궁합")
            //
            //                    Text("ISTP")
            //                        .bold()
            //                        .foregroundColor(Color("mint"))
            //                        .shadow(radius: 1)
            //                    Text("ENTP")
            //                        .bold()
            //                        .foregroundColor(Color("mint"))
            //                        .shadow(radius: 1)
            //                }
            //
            //
            //                VStack{
            //                Text("최악의 궁합")
            //
            //                    Text("ESTP")
            //                        .bold()
            //                        .foregroundColor(.pink)
            //                        .shadow(radius: 1)
            //                    Text("ESTP")
            //                        .bold()
            //                        .foregroundColor(.pink)
            //                        .shadow(radius: 1)
            //                }
            //            }
            
            HStack(spacing: 10){
                VStack{
                    Text("최고의 궁합")
                    
                    Text("ISTP")
                        .bold()
                        .foregroundColor(Color("mint"))
                        .shadow(radius: 1)
                    Text("ENTP")
                        .bold()
                        .foregroundColor(Color("mint"))
                        .shadow(radius: 1)
                }
                
                
                VStack{
                    Text("최악의 궁합")
                    
                    Text("ESFJ")
                        .bold()
                        .foregroundColor(.gray)
                        .shadow(radius: 1)
                    Text("ESTP")
                        .bold()
                        .foregroundColor(.gray)
                        .shadow(radius: 1)
                }
            }
            
            HStack(alignment:.bottom) {
                Spacer()
                VStack {
                    CircularProgressView()
                        .padding()
                    Text("MBTI 정답률")
                }
                Spacer()
                VStack {
                    
                    Slider(value: $sliderVal, in: 0...100,
                           onEditingChanged: { editing in
                        isEditing = editing
                        if sliderVal > 80{
                            ttabongColor = "yellow"
                        } else if sliderVal > 40 {
                            ttabongColor = "silver"
                        } else if sliderVal > 20 {
                            ttabongColor = "Bronze"
                        } else{
                            ttabongColor = "mint"
                        }
                    }
                    )
                    .frame(width: 100)
                    
                    Image(systemName: "hand.thumbsup.fill")
                        .resizable()
                        .frame(width:70, height: 70)
                        .padding(.bottom, 10)
                        .foregroundColor(Color(ttabongColor))
                    
                    Text("호감도")
                }
                Spacer()
            }
            .padding(30)
            
            
            VStack(){
                Section{
                    List(){
                        Text("최근 채팅 목록 MBTI")
                            .fontWeight(.bold)
                            .foregroundColor(Color("mint"))
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        ForEach(0..<3){_ in
                            Text("ISTP")
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        .listRowSeparator(.hidden)
                    }
                }
                .scrollContentBackground(.hidden)
                .listStyle(.plain)
                //.multilineTextAlignment(.center)
                
                
                Button(action: {
                    changeMBTI.toggle()
                }) {
                    ZStack{
                        Rectangle()
                            .frame(width:300, height: 60)
                            .cornerRadius(15)
                            .foregroundColor(Color("mint"))
                        Text("MBTI 재설정")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
                .fullScreenCover(isPresented: $changeMBTI) {
                    LoginView(userInfo: userInfo, mbtis: Mbtis(), isStart: $changeMBTI)
                    
                }
                .padding(.bottom,40)
                
            }
            
        }
        .onAppear{
            
            print(userInfo.mbti)
            
            //
            //            if userInfo.likes > 49 {
            //              ttabongColor = "yellow"
            //            } else if userInfo.likes > 30 {
            //              ttabongColor = "silver"
            //            } else {
            //              ttabongColor = "mint"
            //            }
            
            
            
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
            .environmentObject(UserInfo())
    }
}


//
//
//ZStack(alignment: .bottom) {
//
//    Rectangle()
//        .frame(width: 45, height: 100)
//        .foregroundColor(.white)
//        .border(Color("mint"))
//
//
//
//    ZStack(alignment:.top){
//
//        Rectangle()
//            .frame(width: 45, height: CGFloat(userInfo.likes))
//            .foregroundColor(Color("mint"))
//            .border(Color("mint"))
//        Text("\(userInfo.likes)")
//            .font(.body)
//            .fontWeight(.medium)
//
//
//    }
//}
