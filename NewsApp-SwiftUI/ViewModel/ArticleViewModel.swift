//
//  ViewModel.swift
//  NewsApp-SwiftUI
//
//  Created by Dafi Majid Fadhlih on 09/11/22.
//

import Foundation

class ArticleViewModel: ObservableObject {
    @Published var articles: [Article] = []
    
    func fetch() {
        guard let url = URL(string : "https://newsapi.org/v2/top-headlines?country=us&pageSize=10&page=1&apiKey=45b104ac780141b6b74bc9fdc536e402") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            // Convert to JSON
            do{
                let articleResponse = try JSONDecoder().decode(ArticleResponse.self, from: data)
                print(articleResponse)
                
                DispatchQueue.main.async {
                    self?.articles = articleResponse.articles
                }
            } catch {
                print(error)
                
            }
        }
        
        task.resume()
    }
    
    
}
