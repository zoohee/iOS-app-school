//
//  Best_AnwserView.swift
//  IMtb
//
//  Created by greenthings on 2022/11/29.
//

import SwiftUI

struct Best_AnwserView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        VStack{
            HStack{
                
                Button {
                    
                    print("좋아요")
                    for _ in 0..<3{
                        presentationMode.wrappedValue.dismiss()
                    }
                } label: {
                    VStack{
       
                        Text("좋아요")
                            .frame(width:100, height: 80)
                            .background(RoundedRectangle(cornerRadius: 20).strokeBorder())
                    }
                }
                
                Button {
                    print("그냥 그래요")
                    for _ in 0..<3{
                        presentationMode.wrappedValue.dismiss()
                    }
                } label: {
                    Text("그냥 그래요")
                        .frame(width:100, height: 80)
                        .background(RoundedRectangle(cornerRadius: 20).strokeBorder())
                }

            }
 
        }
    }
}

struct Best_AnwserView_Previews: PreviewProvider {
    static var previews: some View {
        Best_AnwserView()
    }
}
