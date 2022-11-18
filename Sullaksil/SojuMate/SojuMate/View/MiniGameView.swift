//
//  MiniGameView.swift
//  SojuMate
//
//  Created by Da Hae Lee on 2022/11/14.
//

import SwiftUI

struct MiniGameView: View {
    var body: some View {
        ZStack {
            // 배경색
            Color("ThemeGreen")
                .ignoresSafeArea()
            VStack {
                Image("RPS")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MiniGameView_Previews: PreviewProvider {
    static var previews: some View {
        MiniGameView()
    }
}
