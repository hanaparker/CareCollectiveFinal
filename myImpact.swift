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
                Text("My Photos:")
                    .font(.largeTitle)
                    
                ScrollView(.horizontal){
                    HStack{
                        Image("gigidancing")
                            .resizable(resizingMode:.stretch)
                            .aspectRatio(contentMode:.fit)
                            .cornerRadius(10)
                            .frame(width:300, height: 300)
                        Image("gigigroup")
                            .resizable(resizingMode:.stretch)
                            .aspectRatio(contentMode:.fit)
                            .cornerRadius(10)
                            .frame(width:300, height: 300)
                        Image("gigiwave")
                            .resizable(resizingMode:.stretch)
                            .aspectRatio(contentMode:.fit)
                            .cornerRadius(10)
                            .frame(width:300, height: 300)
                    }
                }
                
                ScrollView(.horizontal){
                    HStack{
                        Image("gigiongo")
                            .resizable(resizingMode:.stretch)
                            .aspectRatio(contentMode:.fit)
                            .cornerRadius(10)
                            .frame(width:300, height: 300)
                        Image("gigitalking")
                            .resizable(resizingMode:.stretch)
                            .aspectRatio(contentMode:.fit)
                            .cornerRadius(10)
                            .frame(width:300, height: 300)
                        Image("gigiteaching")
                            .resizable(resizingMode:.stretch)
                            .aspectRatio(contentMode:.fit)
                            .cornerRadius(10)
                            .frame(width:300, height: 300)
                    }
                }
                
                Spacer()
                    .frame(width: 30, height: 50)
                
            }
        }
        
    }
}

struct myImpact_Previews: PreviewProvider {
    static var previews: some View {
        myImpact()
    }
}
