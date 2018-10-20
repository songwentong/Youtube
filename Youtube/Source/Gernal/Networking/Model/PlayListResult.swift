//
//  PlayListResult.swift
//  Youtube
//
//  Created by 宋文通 on 2018/10/20.
//  Copyright © 2018 Wentong Song. All rights reserved.
//

import Foundation
public struct PlayListResult:Codable {
    var etag:String
    var pageInfo:[String: Int]
    var nextPageToken:String
    var items:[ListItem]
    var kind:String
}
public struct ListItem: Codable {
    var id:String
    var etag:String
    var snippet:Snippet
    var contentDetails:[String: Int]
    var kind:String
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case etag = "etag"
        case snippet = "snippet"
        case contentDetails = "contentDetails"
        case kind = "kind"
    }
}
