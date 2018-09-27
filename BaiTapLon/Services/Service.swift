//
//  Service.swift
//  BaiTapLon
//
//  Created by Vũ Hải Đăng on 9/26/18.
//  Copyright © 2018 haidang.baitaplon. All rights reserved.
//

import Foundation
import Alamofire

class Service {
    // base url of api
    var baseUrl: String! = "https://api.jikan.moe"
    
    // get
    func get(key: String!, uri: String!, callback: @escaping ([Any]?)-> Void) {
        Alamofire
            .request(baseUrl + uri, method: .get, encoding: JSONEncoding.default)
            .responseJSON { result in
                if let value = result.value as? [String: Any], let data = value[key] as? [[String: Any]] {
                    callback(data)
                }
            }
    }
    
    // post
    func post(uri: String!, formData: Parameters!, callback: @escaping (Any)-> Void) {
        Alamofire
            .request(baseUrl + uri, method: .post, parameters: formData, encoding: JSONEncoding.default)
            .responseJSON { response in
            if let json = response.result.value {
                callback(json)
            }
        }
    }
}
