//
//  LollinWidgetLiveActivity.swift
//  LollinWidget
//
//  Created by 김태성 on 2022/11/08.
//

import ActivityKit
import WidgetKit
import SwiftUI

//struct LollinWidgetAttributes: ActivityAttributes {
//    public struct ContentState: Codable, Hashable {
//        // Dynamic stateful properties about your activity go here!
//        var value: Int
//    }
//
//    // Fixed non-changing properties about your activity go here!
//    var name: String
//}
//
//struct LollinWidgetLiveActivity: Widget {
//    var body: some WidgetConfiguration {
//        ActivityConfiguration(for: LiveTripDemoLiveActivity.self) { context in
//            // Lock screen/banner UI goes here
//            VStack {
//                Text("Hello")
//            }
//            .activityBackgroundTint(Color.cyan)
//            .activitySystemActionForegroundColor(Color.black)
//
//        } dynamicIsland: { context in
//            DynamicIsland {
//                // Expanded UI goes here.  Compose the expanded UI through
//                // various regions, like leading/trailing/center/bottom
//                DynamicIslandExpandedRegion(.leading) {
//                    Text("Leading")
//                }
//                DynamicIslandExpandedRegion(.trailing) {
//                    Text("Trailing")
//                }
//                DynamicIslandExpandedRegion(.bottom) {
//                    Text("Bottom")
//                    // more content
//                }
//            } compactLeading: {
//                Text("L")
//            } compactTrailing: {
//                Text("T")
//            } minimal: {
//                Text("Min")
//            }
//            .widgetURL(URL(string: "http://www.apple.com"))
//            .keylineTint(Color.red)
//        }
//    }
//}

import ActivityKit
import WidgetKit
import SwiftUI

struct LollinWidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: LiveTripDemoAttributes.self) { context in
            // Lock screen/banner UI goes here
//            TrainTripView(trinDistance: context.state.value)
            
        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("승급까지")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("23LP")
                }
                DynamicIslandExpandedRegion(.center) {
                    HStack {
                        Image("images")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("햄주먹0")
                        Text("3연승중!")
                    }
                    
                }
                DynamicIslandExpandedRegion(.bottom) {
                    ProgressView("LP 77", value: context.state.value, total: 70)
                        .padding()
                        .foregroundColor(.blue)
                    
                    // more content
                }
            } compactLeading: {
                Text("3연승중")
            } compactTrailing: {
                Text("+23LP")
            } minimal: {
                Text("Paddington")
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}
