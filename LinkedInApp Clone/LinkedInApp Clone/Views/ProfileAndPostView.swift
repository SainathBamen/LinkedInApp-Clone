//
//  ProfileAndPostView.swift
//  LinkedInApp Clone
//
//  Created by mac on 9/2/24.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack(alignment: .leading){
            SearchBar()
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("Start a post")
                
            }.padding()
            Divider()
            HStack{
                Image(systemName: "photo")
                    .foregroundColor(Color.blue)
                Text("photo")
                Spacer()
                
                Image(systemName: "video.fill")
                    .foregroundColor(Color.green)
                Text("video")
                Spacer()
                
                Image(systemName: "photo")
                    .foregroundColor(Color.orange)
                Text("calendar")
            }
            .padding(.horizontal)
        }
    }
}

struct ProfileAndPostView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAndPostView()
    }
}
