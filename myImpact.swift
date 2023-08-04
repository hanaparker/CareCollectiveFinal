//
//  myImpact.swift
//  HP_accountPage
//
//  Created by Hana Parker on 8/2/23.
//

import SwiftUI

struct myImpact: View {
    var body: some View {
        ZStack{
            Color("lighGrey")
                .background(Color("lightGrey").edgesIgnoringSafeArea(.top))
            VStack{
                Text("Organizations:")
                    .font(.largeTitle)
                    
                
                Spacer()
                    .frame(width: 30, height: 300)
                Text("Hours:")
                    .font(.largeTitle)
                Spacer()
                    .frame(width: 30, height: 275)
                
            }
        }
        
    }
}

struct myImpact_Previews: PreviewProvider {
    static var previews: some View {
        myImpact()
    }
}
