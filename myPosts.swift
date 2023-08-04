//
//  myPosts.swift
//  HP_accountPage
//
//  Created by Hana Parker on 8/2/23.
//

import SwiftUI

struct myPosts: View {
    var body: some View {
        ZStack{
            Color("lighGrey")
                .background(Color("lightGrey").edgesIgnoringSafeArea(.top))
            Text("There are no posts yet.")
        }
    }
}

struct myPosts_Previews: PreviewProvider {
    static var previews: some View {
        myPosts()
    }
}
