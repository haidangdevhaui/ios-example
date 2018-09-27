//
//  AnimeService.swift
//  BaiTapLon
//
//  Created by Vũ Hải Đăng on 9/26/18.
//  Copyright © 2018 haidang.baitaplon. All rights reserved.
//

import Foundation

class AnimeService: Service {
    static let shared = AnimeService()
    
    // get top anime
    func getTop(callback: @escaping ([Anime]?)-> Void) {
        self.get(key: "top", uri: "/top/anime/1/upcoming") { data in
            if let animes = data as? [[String: Any]] {
                callback(animes.map { return Anime(anime: $0) })
            }
        }
    }
}
