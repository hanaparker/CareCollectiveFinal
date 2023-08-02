//
//  ContentView.swift
//  HP_accountPage
//
//  Created by Hana Parker on 8/1/23.
//

import SwiftUI

struct circleView : View {
    @State var label: String
    var body : some View{
        ZStack{
            Rectangle()
                .fill(Color("sage"))
                .frame(width: 80, height: 40)
            Button("\(label)"){
                
                
                
            }
            .font(.footnote)
            .foregroundColor(Color("darkGrey"))
        }
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color.white
            }
            
            .navigationTitle("Home")
            .foregroundColor(.black)
        }
        
    }
}

struct MapView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color.white
            }
            
            .navigationTitle("Map")
            .foregroundColor(.black)
        }
        
    }
}

struct AccountPage: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color.white
                
                VStack{
                    ZStack{
                        Color("lighGrey")
                            .background(Color("lightGrey").edgesIgnoringSafeArea(.top))
                        
                        VStack{
                            VStack (spacing: 5){
                                Image("yoshi")
                                    .resizable(resizingMode:.stretch)
                                    .aspectRatio(contentMode:.fit)
                                    .cornerRadius(10)
                                    .frame(width:200, height: 300)
                                    .clipShape(Circle())
                                
                                Text("Blue Yoshi")
                                    .font(Font.custom("Optimaisplay-Book", size: 32, relativeTo: .title))
                                   
                                
                            
                                VStack{
                                    
                                    ScrollView(.horizontal) {
                                        HStack(spacing: 10){
                                                circleView(label: "My Impact")
                                            circleView(label: "Favorites")
                                            circleView(label: "My Posts")
                                            circleView(label: "Settings")
                                            circleView(label: "Terms & Co")
                                            circleView(label: "Privacy Policy")
                                            circleView(label: "Log Out")
                                                
                                            
                                        } .padding()
                                    } .frame(height: 100)
                                }
                                
                                Spacer()
                                
                                
                                ScrollView(.vertical, showsIndicators: true) {
                                    VStack(spacing: 10) {
                                        circleView(label: "My Impact")
                                        circleView(label: "Favorites")
                                    }
                                }

                                /*
                                HStack{
                                    Button("Settings"){
                                        
                                    }
                                }
                                 */
                                
                            }
                        }
                                
                    }
                }
                
                
                
                
                
                
                
                
                
                
            }
            
            
        }
        
    }
}
struct ContentView: View {
    var body: some View {
        
        TabView{
    
            HomeView()
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            MapView()
            .tabItem {
                Image(systemName: "location.circle")
                Text("Map")
            }
            
            AccountPage()
            .tabItem {
                Image(systemName: "person")
                Text("Account Page")
            }
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
                
                
                
                
                
    
       
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
