//
//  Settings.swift
//  HP_accountPage
//
//  Created by Hana Parker on 8/2/23.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        ZStack{
            Color("lighGrey")
                .background(Color("lightGrey").edgesIgnoringSafeArea(.top))
                
            VStack{
                HStack{
                    Text("Settings")
                    .font(.largeTitle)
                    
                    Text("                                   ")
                }
                
                
                Spacer()
                    .frame(width: 20, height: 30)
                HStack{
                    
                        NavigationLink(destination: tac()){
                            Text("Terms and Conditions")
                            .foregroundColor(Color("darkGrey"))
                        }
                    
                    .padding()
                    
                    Text("                      ")
                }
                
                HStack{
                    
                        NavigationLink(destination: pp()){
                           Text("Privacy Policy")
                            .foregroundColor(Color("darkGrey"))
                        }
                    
                    .padding()
                    
                    Text("                                   ")
                }
                
                Spacer()
                    .frame(width: 20, height: 400)
                
            }
        }
    }
}
        

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
