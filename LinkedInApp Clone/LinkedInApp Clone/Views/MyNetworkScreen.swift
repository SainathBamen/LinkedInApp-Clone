//
//  MyNetworkScreen.swift
//  LinkedInApp Clone
//
//  Created by mac on 9/1/24.
//

import SwiftUI

var networkData: [NetworkModel] = [
    .init(id: 0, name: "Kylie Rom", postion: "SDE at Paytm", mutual: 10, image: "demo"),
    .init(id: 1, name: "Jack William", postion: "Assistant Manager", mutual: 23, image: ""),
    .init(id: 2, name: "Sara Jay", postion: "SDE at Amazon", mutual: 13, image: "profile2"),
    .init(id: 3, name: "John Kale", postion: "HR at Intel", mutual: 11, image: "profile3"),
    .init(id: 4, name: "Ash Ketchum", postion: "HR at Manager", mutual: 14, image: ""),
    .init(id: 5, name: "Kim K", postion: "Data Analyst", mutual: 30, image: "profile1"),
    .init(id: 6, name: "Kia L", postion: "Sr Developer", mutual: 22, image: ""),
    .init(id: 7, name: "Ashley Moore", postion: "Data Scientist", mutual: 16, image: "")
    
]

struct MyNetworkScreen: View {
    var body: some View {
        VStack{
            SearchBar()
            
            HStack{
                Text("Manage my networks")
                    .font(.body)
                    .foregroundColor(Color.blue)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(Color.gray)
                
            }
            //Padding to Horizontal Stack.
            .padding(.horizontal)
            
            Rectangle()
                .fill(Color.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false){
                HStack{
                    Text("Invitations")
                        .font(.body)
                        .foregroundColor(Color.blue)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                        
                    
                    
                }
                //Padding to Horizontal Stack.
                .padding(.horizontal)
                Divider()
                
                ForEach(networkData, id: \.id){ data in
                    InvitationView(Data: data)
                    Divider()
                    
                }

                
            }
        }
        
        
    }
}

struct MyNetworkScreen_Previews: PreviewProvider {
    static var previews: some View {
        MyNetworkScreen()
    }
}
