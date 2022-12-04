//
//  BestView.swift
//  IMtb
//
//  Created by greenthings on 2022/11/29.
//

import SwiftUI

struct BestView: View {
    @State private var showingAlert = false
    
    @ObservedObject var chattinglog = TalkLogStore()
    

    @State var timeRemaining = 6
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack{
            
            if timeRemaining < 7{
                HStack{
                    Text("주제 : 사과를 떠오르면 무엇이 생각나시나요?")
                        .padding()
                        .frame(width: 300)
                        .background(           RoundedRectangle(cornerRadius: 20)
                            .strokeBorder()
                            .foregroundColor(Color("mint"))
                            .shadow(color: Color("mint"), radius: 4, x: 0, y: 4))
                    
                    Button(action: {
                        print("SS")
                       showingAlert.toggle()
                    }, label: {
                       Image(systemName: "light.beacon.min.fill")
                            .foregroundColor(.red)
                    })
                    .padding(.leading,10)
                    .alert("신고하겠습니까...?", isPresented: $showingAlert) {
                        Button("Ok") {}
                    } message: {
                        Text("도대체 무슨 인생을...")
                    }
                }
                List{
                    ForEach(chattinglog.besttalklogs, id: \.self) { chat in
                        
                        PersonMessage(Name: chat.Name, ImgName: "figure.wave", Message: chat.Message, Direction: chat.Direction, type: chat.type)
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                        
                        
                    }
                    
                }
                //.background(Color.black)
                .scrollContentBackground(.hidden)
                .listStyle(.plain)
                
                if chattinglog.besttalklogs.count > 4{
                    
                    
                    Button("나가셨습니다.") {
                 
                    }
                    .alert("나가셨습니다..ㅜㅜ", isPresented: $showingAlert) {
                        Button("Ok") {}
                    } message: {
                        Text("점수를 드리러 갈까요..?")
                    }
                    .disabled(true)
                    
                    
                    NavigationLink {
                        Best_AnwserView()
                    } label: {
                        Text("점수 주러 가기")
                    }
                }
                BestInputFieldView(chattinglog: chattinglog)
            }else{
                Spinner()
            }

        }
        .onReceive(timer) { _ in
            //  여기서 publisher를 사용할 필요가 없어서
            // 1초마다 publish를 받을 때마다 timeremaining에 -1를 함.
            if timeRemaining > 0 {
                timeRemaining -= 1
            }
            

        }
    
    }
        
}
 


struct BestView_Previews: PreviewProvider {
    static var previews: some View {
        BestView()
    }
}
