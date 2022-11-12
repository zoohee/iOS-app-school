//
//  AlertView.swift
//  Lollin
//
//  Created by ㅇㅇ on 2022/11/09.
//

import SwiftUI
import AVKit

struct AlertView: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "alert2", withExtension: "mp4")!))
            .ignoresSafeArea()
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
