//
//  EvaluationView.swift
//  IMtb
//
//  Created by greenthings on 2022/12/01.
//

import SwiftUI

struct EvaluationView: View {
    
    @Binding var badisShowing: Bool

    var body: some View {
        VStack{
            Text("😈")
                .font(.system(size: 200))



            Text("주의: 잦은 퇴장은 불이익을 받을 수 있습니다.")
                .bold()
                .foregroundColor(.red)
            Text("상대방에 대한 평가를 해주세요.")
            
            HStack{
                VStack{
                    Button {
                        print("노잼이라")
                    } label: {
                        Text("재미가 없어요.")
                    }
                    .frame(width: 200, height: 80)
                    .background(RoundedRectangle(cornerRadius: 20).strokeBorder().foregroundColor(.purple))
                    Button {
                        print("노잼이라")
                    } label: {
                        Text("이상한 사람이라")
                    }
                    .frame(width: 200, height: 80)
                    .background(RoundedRectangle(cornerRadius: 20).strokeBorder().foregroundColor(.purple))
                }
                VStack{
                    Button {
                        print("노잼이라")
                    } label: {
                        Text("관심사가 안맞아서")
                    }
                    .frame(width: 200, height: 80)
                    .background(RoundedRectangle(cornerRadius: 20).strokeBorder().foregroundColor(.purple))
                    
                    Button {
                        print("노잼이라")
                    } label: {
                        Text("그냥 할말할않")
                    }
                    .frame(width: 200, height: 80)
                    .background(RoundedRectangle(cornerRadius: 20).strokeBorder().foregroundColor(.purple))
                }

            }
            .foregroundColor(.black)
            
            
            Button {
                print("확인")
                badisShowing.toggle()
            } label: {
               Text("제출하기")
            }
            .foregroundColor(.white)
            .fontWeight(.bold)
            .frame(width: 180, height: 70)
            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.purple))

            
        }
    }
}
//
//struct EvaluationView_Previews: PreviewProvider {
//    static var previews: some View {
//        EvaluationView()
//    }
//}
