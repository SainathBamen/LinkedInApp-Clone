//
//  TabBarScreen.swift
//  LinkedInApp Clone
//
//  Created by mac on 9/3/24.
//

import SwiftUI

struct TabBarScreen: View {
    var body: some View {
        TabView{
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                    }
            MyNetworkScreen()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("MyNetwork")
                    }
            Text("Post")
                .tabItem {
                    Image(systemName: "plus.app.fill")
                    Text("Post")

                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell.badge.fill")
                    Text("Notifications")
                }
            Text("Jobs")
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    Text("Jobs")
                }
            
            
                
                
                }
        }
    }


struct TabBarScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabBarScreen()
    }
}
