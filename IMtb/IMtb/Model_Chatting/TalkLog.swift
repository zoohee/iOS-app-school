//
//  TalkLog.swift
//  Chatting
//
//  Created by greenthings on 2022/11/28.
//

import Foundation

enum TalkDirection: Int, Codable{
    case left
    case right
}


enum TalkMsgType: Int, Codable{
    case message
    case image
}

// Struct에 indetifiable하고 id uuid하면 에러 안생김.
struct TalkLog: Codable, Identifiable, Hashable{
    var id: UUID = UUID()
    
    var Name: String
    var Message: String
    var Direction: TalkDirection
    var type: TalkMsgType
    
    init(Name: String, Message: String, Direction: TalkDirection, type: TalkMsgType) {
        self.Name = Name
        self.Message = Message
        self.Direction = Direction
        self.type = type
    }
}

