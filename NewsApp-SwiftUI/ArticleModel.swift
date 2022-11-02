//
//  ArticleModel.swift
//  NewsApp-SwiftUI
//
//  Created by MF_Dafi Majid Fadhlih on 11/2/22.
//

import Foundation
import SwiftUI

struct Article {
    let author, title, description, url, urlToImage, publishedAt, content: String

    
    var image: AsyncImage<Image> {
        AsyncImage(url: URL(string: urlToImage))
            .frame(width: 70, height: 70) as! AsyncImage<Image>
    }
        
}

let dummyArticleData = [
    Article(author: "Dafi", title: "MF", description: "MF my first company", url: "https://www.google.com/", urlToImage: "https://www.fool.com.au/wp-content/uploads/2022/04/Girl-looks-at-laptop-confused-16_9.jpg", publishedAt: "2022-11-01", content: "Stay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter\r\nStay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter \r\nEver since… [+2156 chars]"),
    Article(author: "Majid", title: "Tp", description: "tokped my second company", url: "https://www.google.com/", urlToImage: "https://www.fool.com.au/wp-content/uploads/2022/04/Girl-looks-at-laptop-confused-16_9.jpg", publishedAt: "2022-11-01", content: "Stay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter\r\nStay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter \r\nEver since… [+2156 chars]"),
]



