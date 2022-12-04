//
//  ContentView.swift
//  Chatting
//
//  Created by greenthings on 2022/11/28.
//

import SwiftUI

struct ChattingView: View {
    
    
    @ObservedObject var chattinglog = TalkLogStore()
    
    @State private var showingAlert = false
    
    @State var timeRemaining = 4
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    var body: some View {
        VStack{
            
            if timeRemaining < 7 {
                HStack(spacing:0){
                    
                    
                    Text("\(5 - chattinglog.talklogs.count)")
                        .frame(width:30, height: 30)
                        .background(
                            RoundedRectangle(cornerRadius: 20).strokeBorder()
                        )
                    
                    
                    Text("주제 : 좋아하는 성향은?")
                        .padding()
                        .frame(width: 300)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .strokeBorder()
                                .foregroundColor(Color("mint"))
                                .shadow(color: Color("mint"), radius: 4, x: 0, y: 4))
                        .padding(.leading,20)
                    
                    
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
                    ForEach(chattinglog.talklogs, id: \.self) { chat in
                        
                        PersonMessage(Name: chat.Name, ImgName: "figure.wave", Message: chat.Message, Direction: chat.Direction, type: chat.type)
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                        
                        
                    }
                    
                }
                .animation(.easeInOut)
                //.background(Color.black)
                .scrollContentBackground(.hidden)
                .listStyle(.plain)
                
                
                if chattinglog.talklogs.count > 4{
                    NavigationLink {
                        AskingMBTIView()
                    } label: {
                        Text("맞추기")
                            .frame(width:200, height: 50)
                            .foregroundColor(Color("mint"))
                            .background(
                                RoundedRectangle(cornerRadius: 10).strokeBorder()
                                    .foregroundColor(Color("mint"))
                            )
                        
                    }
                    
                }
                InputFieldView(chattinglog: chattinglog)
            }else{
                Spinner()
            }
        }
        .edgesIgnoringSafeArea([.trailing,.leading])
        .onReceive(timer) { _ in
            //  여기서 publisher를 사용할 필요가 없어서
            // 1초마다 publish를 받을 때마다 timeremaining에 -1를 함.
            if timeRemaining > 0 {
                timeRemaining -= 1
            }
        }
        
    }
}


struct ChattingView_Previews: PreviewProvider {
    static var previews: some View {
        ChattingView()
    }
}



//                        RoundedRectangle(cornerRadius: 20)
//                            .strokeBorder(style: StrokeStyle(lineWidth: 4, dash: [CGFloat(10)], dashPhase: CGFloat(10)))
//                                    .frame(width: 200, height: 70)

//                        Rectangle()
//                            .strokeBorder(style: StrokeStyle(lineWidth: 4, dash: [10], dashPhase: CGFloat(10)))
//                                    .frame(width: 200, height: 70)


//                         Rectangle()
//                            .stroke(style: StrokeStyle(lineWidth: 20, dash: [CGFloat(10), CGFloat(2),CGFloat(5)],dashPhase: CGFloat(10))
//                        Rectangle()
//                        .strokeBorder()
//                        .border(Color("mint"), width: 3))
