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
            Text("๐")
                .font(.system(size: 200))



            Text("์ฃผ์: ์ฆ์ ํด์ฅ์ ๋ถ์ด์ต์ ๋ฐ์ ์ ์์ต๋๋ค.")
                .bold()
                .foregroundColor(.red)
            Text("์๋๋ฐฉ์ ๋ํ ํ๊ฐ๋ฅผ ํด์ฃผ์ธ์.")
            
            HStack{
                VStack{
                    Button {
                        print("๋ธ์ผ์ด๋ผ")
                    } label: {
                        Text("์ฌ๋ฏธ๊ฐ ์์ด์.")
                    }
                    .frame(width: 200, height: 80)
                    .background(RoundedRectangle(cornerRadius: 20).strokeBorder().foregroundColor(.purple))
                    Button {
                        print("๋ธ์ผ์ด๋ผ")
                    } label: {
                        Text("์ด์ํ ์ฌ๋์ด๋ผ")
                    }
                    .frame(width: 200, height: 80)
                    .background(RoundedRectangle(cornerRadius: 20).strokeBorder().foregroundColor(.purple))
                }
                VStack{
                    Button {
                        print("๋ธ์ผ์ด๋ผ")
                    } label: {
                        Text("๊ด์ฌ์ฌ๊ฐ ์๋ง์์")
                    }
                    .frame(width: 200, height: 80)
                    .background(RoundedRectangle(cornerRadius: 20).strokeBorder().foregroundColor(.purple))
                    
                    Button {
                        print("๋ธ์ผ์ด๋ผ")
                    } label: {
                        Text("๊ทธ๋ฅ ํ ๋งํ ์")
                    }
                    .frame(width: 200, height: 80)
                    .background(RoundedRectangle(cornerRadius: 20).strokeBorder().foregroundColor(.purple))
                }

            }
            .foregroundColor(.black)
            
            
            Button {
                print("ํ์ธ")
                badisShowing.toggle()
            } label: {
               Text("์ ์ถํ๊ธฐ")
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
