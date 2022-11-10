//
//  DetailArticle.swift
//  NewsApp-SwiftUI
//
//  Created by Dafi Majid Fadhlih on 10/11/22.
//

import SwiftUI

struct DetailArticle: View {
    var article: Article
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    article.image
                        .frame(width: Double.infinity)
                    
                    Text(article.title ?? "")
                        .font(.title)
                        .lineLimit(2)
                    
                    Spacer()

                    HStack {
                        Text(article.author ?? "")
                        Spacer()
                        Text(article.date ?? "")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                    Divider()

                    Text(article.description ?? "")
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Text(article.content ?? "")
                    
                    Spacer()
                    
                    Link("Read more", destination: URL(string: article.url ?? "https://google.com")!)
                }
                .padding()
            }
        }
        .navigationTitle("Detail News")
        .toolbarColorScheme(.dark, for: .navigationBar)

        .toolbarBackground(
            Color.gray,
            for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
//        .accentColor(.white)
        
    }
}

struct DetailArticle_Previews: PreviewProvider {
    static var previews: some View {
        DetailArticle(article: dummyArticleData[0])
    }
}
