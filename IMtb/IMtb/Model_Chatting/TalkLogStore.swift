//
//  TalkLogStore.swift
//  Chatting
//
//  Created by greenthings on 2022/11/28.
//

import Foundation


class TalkLogStore: ObservableObject{
    
    
    @Published var talklogs: [TalkLog] = [
        TalkLog(Name: "", Message: "나를 편안하게 하는 사람이 좋아요", Direction: TalkDirection.left, type: TalkMsgType.message)
    ]

    @Published var besttalklogs: [TalkLog] = [
        TalkLog(Name: "", Message:"원숭이가 떠올라요 ㅎㅎ", Direction: TalkDirection.left, type: TalkMsgType.message)
    ]
    
    @Published var worsttalklogs: [TalkLog] = [
        TalkLog(Name: "", Message:"원숭이가 떠올라요 ㅎㅎ", Direction: TalkDirection.left, type: TalkMsgType.message)
    ]
    
}
