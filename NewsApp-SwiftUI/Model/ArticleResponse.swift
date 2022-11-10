//
//  ArticleResponse.swift
//  NewsApp-SwiftUI
//
//  Created by Dafi Majid Fadhlih on 09/11/22.
//

import Foundation

struct ArticleResponse: Hashable, Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.status = try container.decode(String.self, forKey: .status)
        self.totalResults = try container.decode(Int.self, forKey: .totalResults)
        self.articles = try container.decode([Article].self, forKey: .articles)
    }
    

}
