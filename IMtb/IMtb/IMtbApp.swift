//
//  IMtbApp.swift
//  IMtb
//
//  Created by greenthings on 2022/11/29.
//

import SwiftUI

@main
struct IMtbApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserInfo())
        }
    }
}
