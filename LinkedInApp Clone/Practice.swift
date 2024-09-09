//
//  Practice.swift
//  LinkedInApp Clone
//
//  Created by mac on 9/3/24.
//

import SwiftUI

struct Practice: View {
    var body: some View {
        ScrollView{
            
                
            HStack(){
                Image("LinkedInimg")
                    .resizable()
                    .frame(width: 100, height: 100)
                VStack{
                    Text("Linked")
                    Text("In")
                    
                    
                }.padding(.all)
                
            }
            }
        }
    }


struct Practice_Previews: PreviewProvider {
    static var previews: some View {
        Practice()
    }
}
