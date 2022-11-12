//
//  UserStore.swift
//  Lollin
//
//  Created by 이주희 on 2022/11/08.
//

import SwiftUI
import Combine

class UserStore : ObservableObject {
    
    @Published var users: [User]
    
    init (users: [User] = []) {
        self.users = users
    }
}
