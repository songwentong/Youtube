//
//  SearchResult.swift
//
//  this file is auto create by WTKit on 2018-10-15 11:16:32.
//  site:https://github.com/swtlovewtt/WTKit
//  Thank you for use my json model maker😜
//
public struct SearchResult:Codable{
    var kind:String
    var etag:String
    var nextPageToken:String
    var regionCode:String
    var pageInfo:PageInfo
    var items:[SearchResultUnit]
}
public struct PageInfo:Codable{
    var totalResults:Int
    var resultsPerPage:Int
}
public struct SearchResultUnit: Codable {
    var etag:String
    var kind:String
    var id:ResultUnitID
    var snippet:Snippet
    enum CodingKeys: String, CodingKey {
        case etag = "etag"
        case kind = "kind"
        case id = "id"
        case snippet = "snippet"
    }
}
public struct ResultUnitID:Codable{
    var kind:String
    var videoId:String?
    var playlistId:String?
}
public struct Snippet: Codable {
    var channelId:String
    var title:String
    var description:String
    var thumbnails:Thumbnails?
    var channelTitle:String
    var liveBroadcastContent:String?
    var publishedAt:String
    enum CodingKeys: String, CodingKey {
        case channelId = "channelId"
        case title = "title"
        case description = "description"
        case thumbnails = "thumbnails"
        case channelTitle = "channelTitle"
        case liveBroadcastContent = "liveBroadcastContent"
        case publishedAt = "publishedAt"
    }
}
public struct Thumbnails: Codable {
    var high:ThumbSize
    var medium:ThumbSize
    var default_var:ThumbSize
    var standard:ThumbSize?
    var maxres:ThumbSize?
    enum CodingKeys: String, CodingKey {
        case high = "high"
        case medium = "medium"
        case default_var = "default"
        case standard = "standard"
        case maxres = "maxres"
    }
}
public struct ThumbSize: Codable {
    var height:Int?
    var url:String
    var width:Int?
    enum CodingKeys: String, CodingKey {
        case height = "height"
        case url = "url"
        case width = "width"
    }
}
