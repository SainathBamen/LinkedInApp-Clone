//
//  PostView.swift
//  LinkedInApp Clone
//
//  Created by mac on 9/2/24.
//

import SwiftUI

var postData : [PostData] = [
    
    .init(id: 0, image: "sai3", title: "iNeuron", followers: 4046, profileImage: "sai5"),
    .init(id: 1, image: "sai1", title: "Learnyst", followers: 2345, profileImage: "sai2"),
    .init(id: 2, image: "sai2", title: "Synopsys inc", followers: 2023, profileImage: "sai4"),
    .init(id: 3, image: "sai4", title: "Skill-Lync", followers: 1243, profileImage: "sai5"),
    .init(id: 4, image: "sai5", title: "Intel", followers: 2093, profileImage: "sai5"),
    .init(id: 5, image: "sai6", title: "HP", followers: 3009, profileImage: "sai5"),
    .init(id: 6, image: "womenlaptop", title: "Jungleworks", followers: 1630, profileImage: "sai2"),
    .init(id: 7, image: "ipark", title: "Arrikto", followers: 1657, profileImage: "sai4"),
    .init(id: 8, image: "cycleman", title: "TATA Power", followers: 8099, profileImage: "sai2"),
    .init(id: 9, image: "profile8", title: "Angle", followers: 4000, profileImage: "sai1"),
    .init(id: 10, image: "profile7", title: "Zoho", followers: 2909, profileImage: "sai3")
]

struct PostView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center){
                ForEach(postData, id: \.id){ dataItem in
                    PostCardView(data: dataItem)
                    
                    HStack(spacing: 59) {
                        ForEach(socialView, id: \.id){ data in
                            VStack{
                                Image(systemName: data.image)
                                Text("\(data.title)")
                            }
                            .foregroundColor(Color.black.opacity(0.8))
                            .font(.subheadline)
                            
                        }
                        .padding(2)
                    }
                    
                }
                
            }
            
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
