//
//  LollinWidgetBundle.swift
//  LollinWidget
//
//  Created by 김태성 on 2022/11/08.
//

import WidgetKit
import SwiftUI

@main
struct LollinWidgetBundle: WidgetBundle {
    var body: some Widget {
        LollinWidget()
        LollinWidgetLiveActivity()
    }
}
