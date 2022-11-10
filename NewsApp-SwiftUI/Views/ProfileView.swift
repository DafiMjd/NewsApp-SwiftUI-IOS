//
//  ProfileView.swift
//  NewsApp-SwiftUI
//
//  Created by Dafi Majid Fadhlih on 10/11/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("Dafi")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 240, height: 240)
                Spacer()
                    .frame(height: 20)
                
                Text("Dafi Majid Fadhlih")
                Text("Mobile Developer (Flutter)")
                Text("dafi.majid@gmail.com")
            }
        }
        .navigationTitle("Profile")
        .toolbarColorScheme(.dark, for: .navigationBar)

        .toolbarBackground(
            Color.gray,
            for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
//        .accentColor(.white)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
