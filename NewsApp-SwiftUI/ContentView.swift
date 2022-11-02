//
//  ContentView.swift
//  NewsApp-SwiftUI
//
//  Created by MF_Dafi Majid Fadhlih on 11/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("Navigation Title")
            .toolbar {
                Button(action: {
                    print("dafi")
                }) {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
