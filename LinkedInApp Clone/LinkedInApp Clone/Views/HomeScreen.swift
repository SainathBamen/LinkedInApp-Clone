//
//  HomeScreen.swift
//  LinkedInApp Clone
//
//  Created by mac on 9/3/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20){
            ProfileAndPostView()
            PostView()
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
