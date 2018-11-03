//
//  PlayListItem.swift
//  Youtube
//
//  Created by 宋文通 on 2018/11/3.
//  Copyright © 2018 Wentong Song. All rights reserved.
//  专题搜索结果

import UIKit
public class PlayListItemResult: NSObject,Codable{
    var kind:String
    var etag:String
    var pageInfo:PageInfo
    var items:[PlayListItemResultUnit]
}
public class PlayListItemResultUnit: NSObject,Codable {
    var kind:String
    var etag:String
    var id:String
    var snippet:Snippet
    var contentDetails:ContentDetails
}
public class ContentDetails:Codable{
    var videoId: String
    var videoPublishedAt: String
}
/*
 {
 "kind": "youtube#playlistItemListResponse",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/J0u4s4iSAKC5UKrwkXvVoS-k8YQ\"",
 "pageInfo": {
 "totalResults": 13,
 "resultsPerPage": 25
 },
 "items": [
 {
 "kind": "youtube#playlistItem",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/9HMdZkkdHtZumZsfvLpnSx1TBBI\"",
 "id": "UExCQ0YyREFDNkZGQjU3NERFLkE2OTA3QzIwNEI3RjYxMDE=",
 "snippet": {
 "publishedAt": "2013-10-18T14:55:24.000Z",
 "channelId": "UCvceBgMIpKb4zK1ss-Sh90w",
 "title": "Andrew Willis, Skatepark Engineer",
 "description": "Andrew Willis built a skatepark in East London using reclaimed materials left over from the Olympic Games, creating a lasting legacy for the local community of Hackney Wick.",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/GvgqDSnpRQM/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/GvgqDSnpRQM/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/GvgqDSnpRQM/hqdefault.jpg",
 "width": 480,
 "height": 360
 },
 "standard": {
 "url": "https://i.ytimg.com/vi/GvgqDSnpRQM/sddefault.jpg",
 "width": 640,
 "height": 480
 }
 },
 "channelTitle": "Google Search Stories",
 "playlistId": "PLBCF2DAC6FFB574DE",
 "position": 0,
 "resourceId": {
 "kind": "youtube#video",
 "videoId": "GvgqDSnpRQM"
 }
 },
 "contentDetails": {
 "videoId": "GvgqDSnpRQM",
 "videoPublishedAt": "2013-10-18T07:03:29.000Z"
 }
 },
 {
 "kind": "youtube#playlistItem",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/SJrF_Av5hu7i2NlcaMD5Z30dZ2Y\"",
 "id": "UExCQ0YyREFDNkZGQjU3NERFLjU5NzE2QkNERURDRTE5NDc=",
 "snippet": {
 "publishedAt": "2011-09-23T04:52:44.000Z",
 "channelId": "UCvceBgMIpKb4zK1ss-Sh90w",
 "title": "Private video",
 "description": "This video is private.",
 "channelTitle": "Google Search Stories",
 "playlistId": "PLBCF2DAC6FFB574DE",
 "position": 1,
 "resourceId": {
 "kind": "youtube#video",
 "videoId": "fIc_VEQ7Vo0"
 }
 },
 "contentDetails": {
 "videoId": "fIc_VEQ7Vo0"
 }
 },
 {
 "kind": "youtube#playlistItem",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/u3Vr26TTSoSJJjEZTTWL81J2QLo\"",
 "id": "UExCQ0YyREFDNkZGQjU3NERFLkZGQjNGMEFDQ0U0MzBCMzc=",
 "snippet": {
 "publishedAt": "2011-11-22T15:29:40.000Z",
 "channelId": "UCvceBgMIpKb4zK1ss-Sh90w",
 "title": "Mark Lesek: A New/Old Prosthetic",
 "description": "Follow Mark on Google+: https://plus.google.com/u/0/114778778979884307299/about\r\n\r\nMark lost his arm several years ago. Now his search for a better prosthetic could improve the lives of amputees everywhere.",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/V4DDt30Aat4/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/V4DDt30Aat4/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/V4DDt30Aat4/hqdefault.jpg",
 "width": 480,
 "height": 360
 },
 "standard": {
 "url": "https://i.ytimg.com/vi/V4DDt30Aat4/sddefault.jpg",
 "width": 640,
 "height": 480
 }
 },
 "channelTitle": "Google Search Stories",
 "playlistId": "PLBCF2DAC6FFB574DE",
 "position": 2,
 "resourceId": {
 "kind": "youtube#video",
 "videoId": "V4DDt30Aat4"
 }
 },
 "contentDetails": {
 "videoId": "V4DDt30Aat4",
 "videoPublishedAt": "2011-11-21T19:11:41.000Z"
 }
 },
 {
 "kind": "youtube#playlistItem",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/sw1iTSEQJt1P_ic9_WaIBC6YvYM\"",
 "id": "UExCQ0YyREFDNkZGQjU3NERFLkFBRDU2ODRCNTgwMzA2RTQ=",
 "snippet": {
 "publishedAt": "2011-10-20T01:02:11.000Z",
 "channelId": "UCvceBgMIpKb4zK1ss-Sh90w",
 "title": "Private video",
 "description": "This video is private.",
 "channelTitle": "Google Search Stories",
 "playlistId": "PLBCF2DAC6FFB574DE",
 "position": 3,
 "resourceId": {
 "kind": "youtube#video",
 "videoId": "07718Vcwcyc"
 }
 },
 "contentDetails": {
 "videoId": "07718Vcwcyc"
 }
 },
 {
 "kind": "youtube#playlistItem",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/FOtajYrAwQLEJiBfkH1FpBw-LMU\"",
 "id": "UExCQ0YyREFDNkZGQjU3NERFLkMyQjUzQkM1OTFFRTNFMEQ=",
 "snippet": {
 "publishedAt": "2011-11-22T15:29:40.000Z",
 "channelId": "UCvceBgMIpKb4zK1ss-Sh90w",
 "title": "Mark Kempton: Neighbors In Need",
 "description": "Follow Mark on Google+: https://profiles.google.com/u/0/105705606437451864842\r\n\r\nWhen floodwaters hit northeast Australia, Mark's innovative search became the difference between life and death for many of his neighbors.",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/XDgC4FMftpg/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/XDgC4FMftpg/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/XDgC4FMftpg/hqdefault.jpg",
 "width": 480,
 "height": 360
 },
 "standard": {
 "url": "https://i.ytimg.com/vi/XDgC4FMftpg/sddefault.jpg",
 "width": 640,
 "height": 480
 }
 },
 "channelTitle": "Google Search Stories",
 "playlistId": "PLBCF2DAC6FFB574DE",
 "position": 4,
 "resourceId": {
 "kind": "youtube#video",
 "videoId": "XDgC4FMftpg"
 }
 },
 "contentDetails": {
 "videoId": "XDgC4FMftpg",
 "videoPublishedAt": "2011-11-21T20:36:57.000Z"
 }
 },
 {
 "kind": "youtube#playlistItem",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/TIH5ezna6MPHapXglEmDD2Whknc\"",
 "id": "UExCQ0YyREFDNkZGQjU3NERFLjk1MkNDOEREQTkwRjc5OEY=",
 "snippet": {
 "publishedAt": "2011-09-23T04:52:44.000Z",
 "channelId": "UCvceBgMIpKb4zK1ss-Sh90w",
 "title": "Zack Matere: Growing Knowledge",
 "description": "Add Zack on Google+ https://plus.google.com/108801896271358175231/about\n\nWatch all the Google Search Stories and submit your own at http://www.youtube.com/searchstories\n\n\nZack Matere, a farmer in Soy, Kenya, searched for a way to save his dying crops. What he discovered was a desire to help local farmers and businesses access information.",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/OE63BYWdqC4/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/OE63BYWdqC4/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/OE63BYWdqC4/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Google Search Stories",
 "playlistId": "PLBCF2DAC6FFB574DE",
 "position": 5,
 "resourceId": {
 "kind": "youtube#video",
 "videoId": "OE63BYWdqC4"
 }
 },
 "contentDetails": {
 "videoId": "OE63BYWdqC4",
 "videoPublishedAt": "2011-09-19T21:03:44.000Z"
 }
 },
 {
 "kind": "youtube#playlistItem",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/GbJ4ottMMMdmJD-lqk1jLLQLpCA\"",
 "id": "UExCQ0YyREFDNkZGQjU3NERFLjY2ODExOUY5RTYxNTdCNDM=",
 "snippet": {
 "publishedAt": "2011-11-22T15:29:40.000Z",
 "channelId": "UCvceBgMIpKb4zK1ss-Sh90w",
 "title": "Mitch Dobrowner: Epic Storms",
 "description": "Follow Mitch on Google+: https://plus.google.com/113020499347875878373/posts\r\n\r\nMitch, a fine art photographer, is constantly searching for incredible storms. And when he finds them, he captures moments that will never exist again.",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/RQbmXxU2dkg/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/RQbmXxU2dkg/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/RQbmXxU2dkg/hqdefault.jpg",
 "width": 480,
 "height": 360
 },
 "standard": {
 "url": "https://i.ytimg.com/vi/RQbmXxU2dkg/sddefault.jpg",
 "width": 640,
 "height": 480
 }
 },
 "channelTitle": "Google Search Stories",
 "playlistId": "PLBCF2DAC6FFB574DE",
 "position": 6,
 "resourceId": {
 "kind": "youtube#video",
 "videoId": "RQbmXxU2dkg"
 }
 },
 "contentDetails": {
 "videoId": "RQbmXxU2dkg",
 "videoPublishedAt": "2011-11-21T21:50:12.000Z"
 }
 },
 {
 "kind": "youtube#playlistItem",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/7saQf2nXoUCGal0j9EoFAyLOOfU\"",
 "id": "UExCQ0YyREFDNkZGQjU3NERFLkNERTk4QURCQjgzNzFEOEQ=",
 "snippet": {
 "publishedAt": "2011-09-23T04:52:44.000Z",
 "channelId": "UCvceBgMIpKb4zK1ss-Sh90w",
 "title": "The Tofino Riders: A 1,000 Year-Old-Wave",
 "description": "A group of surfing buddies search to find breaks that have never been ridden before.\r\n\r\nFollow Jeremy on Google+ https://plus.google.com/108784596859472465602/about\r\n\r\nWatch all the Google Search Stories and submit your own at http://www.youtube.com/searchstories",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/7nJdEXpvi1g/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/7nJdEXpvi1g/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/7nJdEXpvi1g/hqdefault.jpg",
 "width": 480,
 "height": 360
 },
 "standard": {
 "url": "https://i.ytimg.com/vi/7nJdEXpvi1g/sddefault.jpg",
 "width": 640,
 "height": 480
 }
 },
 "channelTitle": "Google Search Stories",
 "playlistId": "PLBCF2DAC6FFB574DE",
 "position": 7,
 "resourceId": {
 "kind": "youtube#video",
 "videoId": "7nJdEXpvi1g"
 }
 },
 "contentDetails": {
 "videoId": "7nJdEXpvi1g",
 "videoPublishedAt": "2011-09-16T21:46:54.000Z"
 }
 },
 {
 "kind": "youtube#playlistItem",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/o9UNAkem8aUabifG4obz9rr_v4Q\"",
 "id": "UExCQ0YyREFDNkZGQjU3NERFLjRFQzA0ODQ3NkU2RjU2QkY=",
 "snippet": {
 "publishedAt": "2011-11-22T15:29:40.000Z",
 "channelId": "UCvceBgMIpKb4zK1ss-Sh90w",
 "title": "David Kennedy: Ancient Ruins",
 "description": "Follow David on Google+: https://plus.google.com/u/0/114898495286326966719/about\r\n\r\nDavid is an aerial archaeologist whose studies have taken him to areas where he isn't allowed to fly. He searches the desert mile by mile, all from an office half a world away.",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/7hakGJU9xco/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/7hakGJU9xco/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/7hakGJU9xco/hqdefault.jpg",
 "width": 480,
 "height": 360
 },
 "standard": {
 "url": "https://i.ytimg.com/vi/7hakGJU9xco/sddefault.jpg",
 "width": 640,
 "height": 480
 }
 },
 "channelTitle": "Google Search Stories",
 "playlistId": "PLBCF2DAC6FFB574DE",
 "position": 8,
 "resourceId": {
 "kind": "youtube#video",
 "videoId": "7hakGJU9xco"
 }
 },
 "contentDetails": {
 "videoId": "7hakGJU9xco",
 "videoPublishedAt": "2011-11-21T20:06:41.000Z"
 }
 },
 {
 "kind": "youtube#playlistItem",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/_IAGkOixvYVcnBM8_rNG51kIHY8\"",
 "id": "UExCQ0YyREFDNkZGQjU3NERFLjA0OTc2REM3MkM0MEU3RUI=",
 "snippet": {
 "publishedAt": "2011-09-23T04:52:44.000Z",
 "channelId": "UCvceBgMIpKb4zK1ss-Sh90w",
 "title": "Caroline: Supernova 2008ha",
 "description": "Caroline, an amateur astronomer, became the youngest person to discover a supernova. Now she's the star of Warwick, New York.\n\nFollow Bob on Google+\nhttps://plus.google.com/116254810301845410582/about\n\nWatch all the Google Search Stories and submit your own at http://www.youtube.com/searchstories",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/x9-F6dbCIHw/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/x9-F6dbCIHw/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/x9-F6dbCIHw/hqdefault.jpg",
 "width": 480,
 "height": 360
 }
 },
 "channelTitle": "Google Search Stories",
 "playlistId": "PLBCF2DAC6FFB574DE",
 "position": 9,
 "resourceId": {
 "kind": "youtube#video",
 "videoId": "x9-F6dbCIHw"
 }
 },
 "contentDetails": {
 "videoId": "x9-F6dbCIHw",
 "videoPublishedAt": "2011-09-17T00:57:20.000Z"
 }
 },
 {
 "kind": "youtube#playlistItem",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/NS1gr5XSDbnT38CsK8UrxaCz5Vc\"",
 "id": "UExCQ0YyREFDNkZGQjU3NERFLkE5NTMyMEJDNjI0RDVBNjk=",
 "snippet": {
 "publishedAt": "2011-09-23T04:52:44.000Z",
 "channelId": "UCvceBgMIpKb4zK1ss-Sh90w",
 "title": "Private video",
 "description": "This video is private.",
 "channelTitle": "Google Search Stories",
 "playlistId": "PLBCF2DAC6FFB574DE",
 "position": 10,
 "resourceId": {
 "kind": "youtube#video",
 "videoId": "gK7lUK0711E"
 }
 },
 "contentDetails": {
 "videoId": "gK7lUK0711E"
 }
 },
 {
 "kind": "youtube#playlistItem",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/YUIaeTK6s_2U6buxwEEHKeK-sbo\"",
 "id": "UExCQ0YyREFDNkZGQjU3NERFLjZGMUU3ODUzRTQ4QkM0Njk=",
 "snippet": {
 "publishedAt": "2011-09-23T04:52:44.000Z",
 "channelId": "UCvceBgMIpKb4zK1ss-Sh90w",
 "title": "Erik-Jan Bos: A Letter from an Old Friend",
 "description": "Erik-Jan, a philosophy scholar in the Netherlands, has spent 20 years studying René Descartes. In 2010, his search to understand Descartes' correspondences led him to something that had been missing for over 300 years.\n\nWatch all the Google Search Stories and submit your own at http://www.youtube.com/searchstories",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/18TknKGC7tY/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/18TknKGC7tY/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/18TknKGC7tY/hqdefault.jpg",
 "width": 480,
 "height": 360
 },
 "standard": {
 "url": "https://i.ytimg.com/vi/18TknKGC7tY/sddefault.jpg",
 "width": 640,
 "height": 480
 }
 },
 "channelTitle": "Google Search Stories",
 "playlistId": "PLBCF2DAC6FFB574DE",
 "position": 11,
 "resourceId": {
 "kind": "youtube#video",
 "videoId": "18TknKGC7tY"
 }
 },
 "contentDetails": {
 "videoId": "18TknKGC7tY",
 "videoPublishedAt": "2011-09-16T22:37:16.000Z"
 }
 },
 {
 "kind": "youtube#playlistItem",
 "etag": "\"XI7nbFXulYBIpL0ayR_gDh3eu1k/cNzc08P58HV8vGucQQBfTyy9hZY\"",
 "id": "UExCQ0YyREFDNkZGQjU3NERFLjEzM0Q3RTUxOTM3MzE4MTM=",
 "snippet": {
 "publishedAt": "2012-03-07T22:52:44.000Z",
 "channelId": "UCvceBgMIpKb4zK1ss-Sh90w",
 "title": "Cheryl and Morgan: Learning Independence",
 "description": "The tools that Cheryl Oakes uses in the classroom help students like Morgan make technology work for them.\r\n\r\nSee more stories: http://www.google.com/searchstories",
 "thumbnails": {
 "default": {
 "url": "https://i.ytimg.com/vi/CyRQJBBVI7g/default.jpg",
 "width": 120,
 "height": 90
 },
 "medium": {
 "url": "https://i.ytimg.com/vi/CyRQJBBVI7g/mqdefault.jpg",
 "width": 320,
 "height": 180
 },
 "high": {
 "url": "https://i.ytimg.com/vi/CyRQJBBVI7g/hqdefault.jpg",
 "width": 480,
 "height": 360
 },
 "standard": {
 "url": "https://i.ytimg.com/vi/CyRQJBBVI7g/sddefault.jpg",
 "width": 640,
 "height": 480
 }
 },
 "channelTitle": "Google Search Stories",
 "playlistId": "PLBCF2DAC6FFB574DE",
 "position": 12,
 "resourceId": {
 "kind": "youtube#video",
 "videoId": "CyRQJBBVI7g"
 }
 },
 "contentDetails": {
 "videoId": "CyRQJBBVI7g",
 "videoPublishedAt": "2012-03-29T15:59:34.000Z"
 }
 }
 ]
 }
 */
