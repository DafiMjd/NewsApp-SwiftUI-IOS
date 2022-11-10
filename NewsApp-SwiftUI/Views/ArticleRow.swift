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
        HStack(alignment: .top) {
            article.image
                        .frame( width: 100, height: 70)
            VStack (alignment: .leading) {
//                HStack {
//                    Text(article.title ?? "No Title")
//                        .font(.title3)
//                        .lineLimit(1)
//                    Spacer()
//                    Text(article.date ?? "No Date")
//                        .font(.footnote)
//                }
                Text(article.title ?? "No Title")
                    .font(.title3)
                    .lineLimit(1)
                
                Spacer()
                    .frame(height: 10)
                Text(article.description ?? "No Desc")
                    .lineLimit(2)
            }
            .padding(.leading)
            Spacer()
        }
        .padding(3)
    }
}

struct ArticleRow_Previews: PreviewProvider {
    static var previews: some View {
        ArticleRow(article: dummyArticleData[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
