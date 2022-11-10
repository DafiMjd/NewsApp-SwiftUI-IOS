//
//  ArticleModel.swift
//  NewsApp-SwiftUI
//
//  Created by MF_Dafi Majid Fadhlih on 11/2/22.
//

import Foundation
import SwiftUI

struct Article: Hashable, Codable, Identifiable {
    let id = UUID()
    
    let author, title, description, url, urlToImage, publishedAt, content: String?
    
    var date: String? {
        dateFromString(isoDate: publishedAt ?? "")
    }
    
    var image: AsyncImage<_ConditionalContent<some View, some View>> {
        AsyncImage(url: URL(string: urlToImage ?? ""), scale: 2) { phase in // 1
                    if let image = phase.image { // 2
                        // if the image is valid
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else if phase.error != nil { // 3
                        // some kind of error appears
                        Text("No image available")
                    } else {
                        //appears as placeholder image
                        Image(systemName: "photo") // 4
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
    }
    
    func dateFromString(isoDate: String) -> String {
        if (isoDate.isEmpty){
            return isoDate
        }
            
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date = dateFormatter.date(from:isoDate)!
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: date)
        
    }
      
    // not including id
        enum CodingKeys: String, CodingKey {
            case author, title, description, url, urlToImage, publishedAt, content
        }
}

let dummyArticleData = [
    Article(author: "Dafi", title: "MF", description: "MF my first company", url: "https://www.google.com/", urlToImage: "https://www.fool.com.au/wp-content/uploads/2022/04/Girl-looks-at-laptop-confused-16_9.jpg", publishedAt: "2022-11-10T13:45:00Z", content: "Stay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter\r\nStay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter \r\nEver since… [+2156 chars]Stay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter\r\nStay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter \r\nEver since… [+2156 chars]Stay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter\r\nStay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter \r\nEver since… [+2156 chars]Stay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter\r\nStay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter \r\nEver since… [+2156 chars]Stay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter\r\nStay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter \r\nEver since… [+2156 chars]Stay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter\r\nStay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter \r\nEver since… [+2156 chars]Stay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter\r\nStay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter \r\nEver s"),
    Article(author: "Majid", title: "Tp", description: "tokped my second company", url: "https://www.google.com/", urlToImage: "https://www.fool.com.au/wp-content/uploads/2022/04/Girl-looks-at-laptop-confused-16_9.jpg", publishedAt: "2022-11-10T13:45:00Z", content: "Stay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter\r\nStay ahead of the trend in fashion and beyond with our free weekly Lifestyle Edit newsletter \r\nEver since… [+2156 chars]"),
]



