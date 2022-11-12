//
//  LollinApp.swift
//  Lollin
//
//  Created by 박진형 on 2022/11/03.
//

import SwiftUI

@main
struct LollinApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(selectedUser: userData[0])
        }
    }
}
