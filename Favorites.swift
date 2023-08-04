//
//  Favorites.swift
//  HP_accountPage
//
//  Created by Hana Parker on 8/2/23.
//

import SwiftUI

struct Favorites: View {
    var body: some View {
        
        ZStack{
            Color("lighGrey")
                .background(Color("lightGrey").edgesIgnoringSafeArea(.top))
            Text("There are no favorites yet.")
        }
        
    }
}

struct Favorites_Previews: PreviewProvider {
    static var previews: some View {
        Favorites()
    }
}
