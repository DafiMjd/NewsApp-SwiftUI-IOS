//
//  NewsList.swift
//  NewsApp-SwiftUI
//
//  Created by Dafi Majid Fadhlih on 10/11/22.
//

import SwiftUI

struct ArticleList: View {
    @StateObject var viewModel = ArticleViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.articles) { article in
                            NavigationLink {
                                DetailArticle(article: article)
                            } label: {
                                ArticleRow(article: article)
                            }
                        }
            .onAppear{
                viewModel.fetch()
            }
            .navigationTitle("Hot News")
            .toolbar {
                NavigationLink {
                    ProfileView()
                } label: {
                    Image(systemName: "person.crop.circle")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                }
            }
            .toolbarColorScheme(.dark, for: .navigationBar)

            .toolbarBackground(
                Color.gray,
                for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            
        }
    }
}

struct ArticleList_Previews: PreviewProvider {
    static var previews: some View {
        ArticleList()
    }
}
