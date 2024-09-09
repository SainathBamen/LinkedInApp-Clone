//
//  PostCardView.swift
//  LinkedInApp Clone
//
//  Created by mac on 9/2/24.
//

import SwiftUI


struct SocialView{
    var id: Int
    var image: String
    var title: String
}

var socialView : [SocialView] = [
    .init(id: 0, image: "hand.thumbsup", title: "Like"),
    .init(id: 1, image: "text.bubble", title: "Comment"),
    .init(id: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(id: 3, image: "paperplane.fill", title: "Send")
]

let samplePostData = PostData(id: 1, image: "pexels-sharad-kachhi-3937174", title: "Sainath Bamen", followers: 9, profileImage: "profile2")



struct PostCardView: View {
    var data: PostData
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(Color.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea(.all)
            
            HStack(alignment: .center){
                Image(data.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70, alignment: .leading)
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                        Text("8m")
                        .font(.caption)
                        .foregroundColor(Color.gray)
                    
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            Text("Looking for a new course on iOS with swiftUI, you are already at great place. ")
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
            
        }
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(data: samplePostData)
    }
}
