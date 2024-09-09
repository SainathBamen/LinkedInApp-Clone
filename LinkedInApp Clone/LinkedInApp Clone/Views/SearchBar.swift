//
//  SearchBar.swift
//  LinkedInApp Clone
//
//  Created by mac on 9/1/24.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack(alignment: .center){
            Image("demo")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            
            //Adding Search Bar
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.blue.opacity(0.2))
                .frame(width: 270, height: 30)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.gray)
                        Spacer()
                    }
                        .padding()
                )
            //Message Box.
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(Color.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
        }
        .padding(.top)
        
        
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
