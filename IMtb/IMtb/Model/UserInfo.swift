//
//  User.swift
//  IMtb
//
//  Created by 박시현 on 2022/11/29.
//

import Foundation
import Combine


class UserInfo: ObservableObject {
    
    var nickname: String = "Bombsgie"
    @Published var mbti: String = "ISFP"
    var rating: Int = 77
    var likes: Int = 50
    
    
}
