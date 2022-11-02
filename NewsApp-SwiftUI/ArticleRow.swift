//
//  ArticleRow.swift
//  NewsApp-SwiftUI
//
//  Created by MF_Dafi Majid Fadhlih on 11/2/22.
//

import SwiftUI

struct ArticleRow: View {
    var article: Article
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: article.urlToImage), scale: 2) { image in
                        image
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                            .progressViewStyle(.circular)
                    }
                        .frame( width: 70, height: 70)
//
            
//            Image(systemName: "globe")
//                .resizable()
//                .frame(width: 70, height: 70)
            
            VStack (alignment: .leading) {
                HStack {
                    Text(article.title)
                        .font(.title2)
                    Spacer()
                    Text(article.publishedAt)
                }
                Spacer()
                    .frame(height: 10)
                Text(article.description)
            }
            .padding(.leading)
            
        }
        .padding(10)
    }
}

struct ArticleRow_Previews: PreviewProvider {
    static var previews: some View {
        ArticleRow(article: dummyArticleData[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
