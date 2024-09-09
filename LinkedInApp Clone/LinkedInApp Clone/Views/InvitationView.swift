//
//  InvitationView.swift
//  LinkedInApp Clone
//
//  Created by mac on 9/1/24.
//

import SwiftUI

let sampleData = NetworkModel(id: 1, name: "Lucy Karren", postion: "SDE At Amazon", mutual: 12, image: "profile1")

struct InvitationView: View {
    var Data: NetworkModel
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            Image(Data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 70, height: 70, alignment: .leading)
            
            VStack(alignment: .leading){
                Text(Data.name)
                    .font(.body)
                Text(Data.postion)
                    .foregroundColor(Color.gray)
                Text("🖇️\(Data.mutual) mutual connections")
                    .font(.caption)
                    .foregroundColor(Color.gray)
            }.frame(width: 150, height: 20, alignment: .leading)
            HStack{
                Image(systemName: "multiply.circle")
                    .font(.system(size: 35))
                    .foregroundColor(Color.red.opacity(0.7))
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundColor(Color.blue.opacity(0.7))
                
            }
            .padding(.horizontal)
        }
        .frame(width: .infinity, height: .infinity)
        .padding(.horizontal)
    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView(Data: sampleData)
    }
}
