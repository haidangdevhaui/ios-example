//
//  Anime.swift
//  BaiTapLon
//
//  Created by Vũ Hải Đăng on 9/25/18.
//  Copyright © 2018 haidang.baitaplon. All rights reserved.
//

import Foundation

class Anime {
    var airing_end: String?
    var airing_start: String?
    var episodes: Int?
    var image_url: String!
    var mal_id: Int?
    var members: Int?
    var rank: Int?
    var score: Int?
    var title: String?
    var type: String?
    var url: String?
    
    init(anime: [String: Any]) {
        self.airing_end = anime["airing_end"] as? String
        self.airing_start = anime["airing_start"] as? String
        self.episodes = anime["episodes"] as? Int
        self.image_url = anime["image_url"] as? String
        self.mal_id = anime["mal_id"] as? Int
        self.members = anime["members"] as? Int
        self.rank = anime["rank"] as? Int
        self.score = anime["score"] as? Int
        self.title = anime["title"] as? String
        self.type = anime["type"] as? String
        self.url = anime["url"] as? String
    }
}

