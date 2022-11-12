//
//  User.swift
//  Lollin
//
//  Created by 조현호 on 2022/11/08.
//

import Foundation

struct User: Codable, Identifiable {
    var id: String
    var userName: String
    var userImage: String
    var userTier: String
    var win: Int
    var lose: Int
    var color: String
	var isGamming: Bool
    var mostChampion: String
	
    var selectedColor: String {
        get{
            let rate: Double = Double(win) / (Double(win) + Double(lose))
            var color: String
            switch rate{
            case 0.7...1.0:
                color = "darkblue"
            case 0.5:
                color = "darkgray"
                break
            case 0.5..<0.7:
                color = "lightblue"
            case 0.3..<0.5:
                color = "lightred"
            case 0..<0.3:
                color = "darkred"
            default:
                color = "lightgray"
            }
            return color
        }
    }
}

