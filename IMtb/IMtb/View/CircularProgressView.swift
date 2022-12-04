//
//  CircularPrograssView.swift
//  IMtb
//
//  Created by BOMBSGIE on 2022/12/01.
//

import SwiftUI

struct CircularProgressView: View {
    @EnvironmentObject var userInfo: UserInfo
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color("mint").opacity(0.3),
                    lineWidth: 10
                )
            Circle()
            // 2
                .trim(from: 0, to: CGFloat(userInfo.rating) / 100)
                .stroke(
                    Color("mint"),
                    style: StrokeStyle(
                        lineWidth: 10,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
            Text("\(userInfo.rating)%")
                
        }
        .frame(width: 60)
    }
}

struct CircularPrograssView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView()
            .environmentObject(UserInfo())
    }
}
