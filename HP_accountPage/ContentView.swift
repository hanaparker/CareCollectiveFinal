//
//  ContentView.swift
//  HP_accountPage
//
//  Created by Hana Parker on 8/1/23.
//

import SwiftUI
import MapKit


struct circleView : View {
    @State var label: String
    var body : some View{
        ZStack{
            Rectangle()
                .fill(Color("sage"))
                .frame(width: 80, height: 40)
            
            if(label == "My Impact"){
                NavigationLink(destination: myImpact()){
                    Text("\(label)")
                }
                .font(.footnote)
                .foregroundColor(Color("darkGrey"))
            } else if (label == "Favorites"){
                NavigationLink(destination: Favorites()){
                    Text("\(label)")
                }
                .font(.footnote)
                .foregroundColor(Color("darkGrey"))
                
            } else if (label == "My Posts"){
                NavigationLink(destination: myPosts()){
                    Text("\(label)")
                }
                .font(.footnote)
                .foregroundColor(Color("darkGrey"))
                
            } else if (label == "Settings"){
                NavigationLink(destination: Settings()){
                    Text("\(label)")
                }
                .font(.footnote)
                .foregroundColor(Color("darkGrey"))
                
            } /*else if (label == "Log Out"){
                NavigationLink(destination: logInOut()){
                    Text("\(label)")
                }
                .font(.footnote)
                .foregroundColor(Color("darkGrey"))
                
            } */
                
            
            
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
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 50, longitude: 0), span: MKCoordinateSpan(latitudeDelta: 25, longitudeDelta: 25))
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor.universalBlue)
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 20.0) {
                    Text("Opportunity Map")
                        .foregroundColor(Color(red: 0.5450980392156862, green: 0.6, blue: 0.5137254901960784))
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    ZStack {
                        VStack {
                            ZStack {
                                Map(coordinateRegion: $mapRegion)
                                    
                            }
                        }
                        .padding()
                        .background(.white)
                        .cornerRadius(15)
                        .padding()
                        .font(.footnote)
                        
                    }
                    Text("Opportunity List") //will need to change text to hexcode #939FA7
                   
                        .foregroundColor(Color(red: 0.5450980392156862, green: 0.6, blue: 0.5137254901960784))
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    ScrollView(.vertical){
                        VStack(spacing: 25){
                            Link("- Red Cross Volunteering", destination: URL(string: "https://www.redcross.org/volunteer/become-a-volunteer.html#step1")!)
                                .foregroundColor(Color(red: 0.3764705882352941, green: 0.3764705882352941, blue: 0.3764705882352941))
                                .padding(.leading)
                            
                            Link("- Medical Justice Alliance", destination: URL(string: "https://airtable.com/shrJ5dGqTBw1S7Mnn")!)
                                .foregroundColor(Color(red: 0.3764705882352941, green: 0.3764705882352941, blue: 0.3764705882352941))
                                .padding(.leading)
                            
                            Link("- Baylor Scott and White", destination: URL(string: "https://www.bswhealth.com/get-involved/become-a-volunteer")!)
                                .foregroundColor(Color(red: 0.3764705882352941, green: 0.3764705882352941, blue: 0.3764705882352941))
                                .padding(.leading)
                            
                            Link("- LifeLong Medical Care", destination: URL(string: "https://lifelongmedical.org/volunteer/")!)
                                .foregroundColor(Color(red: 0.3764705882352941, green: 0.3764705882352941, blue: 0.3764705882352941))
                                .padding(.leading)
                            
                            Link("- Health Equity Ambassadors", destination: URL(string: "https://www.cancer.org/about-us/what-we-do/multicultural/hea.html")!)
                                .foregroundColor(Color(red: 0.3764705882352941, green: 0.3764705882352941, blue: 0.3764705882352941))
                                .padding(.leading)
                        }
                        
                    }
                    
                }
                
            }
                
            .navigationTitle("Map")
            .foregroundColor(.black)
        }
            
    }
}
/*
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
 */




struct AccountPage: View {
    @State private var org = ""
    @State private var hour = ""
    @State private var date = ""
    
    @State private var org1 = " "
    @State private var hour1 = " "
    @State private var date1 = " "
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
                                Image("dinner")
                                   
                                
                            
                                VStack{
                                    
                                    ScrollView(.horizontal) {
                                        HStack(spacing: 10){
                                                circleView(label: "My Impact")
                                            circleView(label: "Favorites")
                                            circleView(label: "My Posts")
                                            circleView(label: "Settings")
                                            //circleView(label: "Log Out")
                                            
                                              
                                            
                                            
                                        } .padding()
                                    } .frame(height: 100)
                                    
                                    HStack (spacing: 70){
                                        Text("Orgs")
                                            
                                        
                                        Text("Hours")
                                        
                                        Text("Dates")
                                        
                                        Text("     ")
                                    }
                                    
                                    HStack (spacing: 20){
                                        TextField("Org", text: $org) //bind the property
                                            .multilineTextAlignment(.leading)
                                            .padding()
                                        
                                        TextField("Hour", text: $hour) //bind the property
                                            .multilineTextAlignment(.leading)
                                        
                                        TextField("Date", text: $date) //bind the property
                                            .multilineTextAlignment(.leading)
                                        
                                        
                                        
                                    }
                                    
                                    HStack(spacing:62){
                                        Button("add"){
                                            org1 = "\(org)"
                                            if(!org.isEmpty){
                                                org = ""
                                            }
                                            
                                        }
                                        .padding()
                                        
                                        Button("add"){
                                            hour1 = "\(hour)"
                                            if(!hour.isEmpty){
                                                hour = ""
                                            }
                                        }
                                        .padding()
                                        
                                        Button("add"){
                                            date1 = "\(date)"
                                            if(!date.isEmpty){
                                                date = ""
                                            }
                                            
                                
                                        }
                                        .padding()
                                        
                                        Text("    ")
                                    }
                                    
                                    HStack(spacing:70){
                                        Text(org1)
                                        Text(hour1)
                                        Text(date1)
                                        Text("    ")
                                    }
                                    
                                    
                                }
                                
                                Spacer()
                                

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
