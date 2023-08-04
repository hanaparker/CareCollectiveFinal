//
//  ContentView.swift
//  HP_accountPage
//
//  Created by Hana Parker on 8/1/23.
//

import SwiftUI
import MapKit



struct HomeView: View {
    var body: some View {
        
        VStack (spacing:0){
            Header()
            
            ScrollView(.vertical,showsIndicators: false){
                stories()
                
                Divider()
                post()
                Spacer()
                post(image:"post2",description: "Huge shout out to William Floyd High School for their efforts in raising $2,500 for breast cancer reasearch!")
                
            }
        }
    }
}

        
struct postContent: View{
    var image: String = "post1"
    var body: some View{
        VStack{
            Image(image)
                .resizable()
                .frame(width:.infinity)
                .aspectRatio(contentMode: .fit)
            HStack{
                HStack{
                    Image(systemName: "heart") //when i click how do i make it go red
                    Image (systemName: "bubble.left")
                    Image(systemName:"paperplane")
                }
                Spacer()
                Image (systemName:"bookmark")
                Image (systemName:"info.circle")
                    .resizable()
                    .frame(width:30, height: 30)
                    .foregroundColor(.blue) //change color
            }
            .padding(.horizontal,12)
            .padding(.vertical,9)
        }
    }
}
struct post: View{
    var image: String = "post1"
    var description: String = "Our worldwide annual Relay For Life event is coming up! Find out how you can participate and even start your own race in your community!"
    var body: some View{
        VStack(alignment:.leading,spacing:0.0){
            postHeader()
            postContent(image:image)
            Text("Liked by hanaparker, siri.g, and others")
                .font(.footnote)
                .frame(width: .infinity, alignment: .leading)
                .padding(.horizontal,12)
                .foregroundColor(.gray)
            
            Text (description)
                .font(.footnote)
                .frame(width:.infinity, alignment: .leading)
                .padding(.horizontal, 12)
            
            HStack{
                HStack{
                    HStack(spacing:7.0){
                        Image("profile1")
                            .resizable()
                            .frame(width: 30,height: 30)
                            .cornerRadius(50)
                            .position(x: 25,y:20)
                        Text("Add Comment...")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .position(x: -35,y:20)
                    }
                    Spacer()
                    HStack(alignment: .center){
                        Text("👍")
                        Text("👏")
                        Text("😍")
                        Image(systemName: "plus.circle")
                            .foregroundColor(.secondary)
                    }
                    .padding(.horizontal,12)
                    .padding(.vertical,9)
                }
            }
        }
    }
}
struct postHeader: View{
    var body: some View{
        HStack{
            HStack{
                Image("profile2")
                    .resizable()
                    .frame(width: 30,height: 30,alignment: .center)
                    .cornerRadius(50)
                
                Text("americancancersociety")
                    .font(.caption)
                    .fontWeight(.bold)
                
            }
            Spacer()
            Image("")
        }
        .padding(.vertical,10)
        .padding(.horizontal,8)
    }
}
struct stories: View{
    var body: some View{
        ScrollView(.horizontal, showsIndicators:false){
            HStack(spacing:15.0){
                Story(image: "Gigiunicef",name:"Your Story")
                Story(image: "profile2",name:"americanca...")
                Story(image: "profile3",name:"hanaparker")
                Story(image: "profile4",name:"siri.m")
                Story(image: "profile5",name:"texaschil...")
            }
            .padding(.horizontal,8)
        }
        .padding(.vertical,10)
    }
}
struct Story: View {
    var image: String = "profile"
    var name: String = "name"
    var body: some View {
        VStack {
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30) //
        }
            .overlay(
            Circle()
                .stroke(LinearGradient(colors: [.blue,.green,.gray], startPoint: .topLeading, endPoint: .bottomTrailing),lineWidth:2)
                .frame(width:68, height: 68)
        )
        .frame(width: 70, height: 70)
        Text(name)
            .font(.caption)
        }
    }
}
struct Header: View {
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .frame(width: 50, height: 50)
            Spacer()
            Text("Your Feed")
                .bold()
                .font(.system(size: 24)) //change color
            
            
            HStack(alignment: .center, spacing: 10) {
                Spacer()
                Image(systemName:"magnifyingglass")
                Image(systemName:"message")
                Image(systemName:"bookmark")
            }
            Spacer()
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

        
    
struct MapView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 50, longitude: 0), span: MKCoordinateSpan(latitudeDelta: 25, longitudeDelta: 25))
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("lighGrey")
                    .background(Color("lightGrey")
                        .edgesIgnoringSafeArea(.top))
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


var namesy = "Gigi Hadid"
var newName = " "
struct circleView : View {
    @State var namey = ""
    @State var no = ""
    @State var label: String
    @State private var presentPopup = false
    var body : some View{
        ZStack{
            Rectangle()
                .fill(Color("sage"))
                .frame(width: 80, height: 40)
            
            if(label == "Camera Roll"){
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
                
            } /*else if (label == "Edit Name"){
                Button("Edit Name") {
                  presentPopup = true
                }
                .popover(isPresented: $presentPopup, arrowEdge: .bottom) {
                    Text("meow")
                    Text("\(no)")
                    
                    TextField("Type Name Here", text: $namey) //bind the property
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    Button("Change"){
                        no = "\(namey)"
                    }
                    
                    
                        .font(.footnote)
                        .foregroundColor(Color("darkGrey"))
                }
            } else if (label == "Edit Picture"){
                Button("Edit Picture") {
                  presentPopup = true
                }
                .popover(isPresented: $presentPopup, arrowEdge: .bottom) {
                  Text("test")
                    .frame(width: 100, height: 100)
                }
                .font(.footnote)
                .foregroundColor(Color("darkGrey"))
                
            }
                
            */
            
        }
    }
}

struct AccountPage: View {
    @State private var org = ""
    @State private var hour = ""
    @State private var date = ""
    
    @State private var org1 = " "
    @State private var hour1 = " "
    @State private var date1 = " "
    

    @State private var name = "Type your name here"
    @State private var name2 = ""
    
    @State private var picture = "greenSquare"
    @State private var picture2 = ""
    
    @State private var presentPopup = false
    @State private var presentPopup2 = false
    

    
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
                                Image("\(picture)")
                                    .resizable(resizingMode:.stretch)
                                    .aspectRatio(contentMode:.fit)
                                    .cornerRadius(10)
                                    .frame(width:200, height: 300)
                                    .clipShape(Circle())
                                
                                Text("\(name)")
                                    .font(Font.custom("Optimaisplay-Book", size: 32, relativeTo: .title))
                                
                                   
                                
                            
                                VStack{
                                    
                                    ScrollView(.horizontal) {
                                        HStack(spacing: 35){
                                            circleView(label: "Camera Roll")
                                            circleView(label: "Favorites")
                                            circleView(label: "My Posts")
                                            circleView(label: "Settings")
                                            
                                            Button("Edit Name") {
                                                presentPopup = true
                                            }
                                            .popover(isPresented: $presentPopup, arrowEdge: .bottom) {
                                                Text("Change name here:")
                                                    .font(.largeTitle)
                                                
                                                TextField("Name", text: $name2) //bind the property
                                                    .multilineTextAlignment(.center)
                                                    .padding()
                                                
                                                Button("change"){
                                                    name = "\(name2)"
                                                    
                                                }
                                                
                                                
                                                    .frame(width: 100, height: 100)
                                            }
                                            
                                            Button("Edit Picture") {
                                                presentPopup2 = true
                                            }
                                            .popover(isPresented: $presentPopup2, arrowEdge: .bottom) {
                                                
                                            
                                                Text("Change your picture here:")
                                                    .font(.largeTitle)
                                                
                                                TextField("Picture", text: $picture2) //bind the property
                                                    .multilineTextAlignment(.center)
                                                    .padding()
                                                
                                                Button("change"){
                                                    picture = "\(picture2)"
                                                    
                                                }
                                                
                                                Button("save"){
                                                    
                                                }
                                                
                                                
                                                    .frame(width: 100, height: 100)
                                            }
                                            
                                        }
                                        
                                        
                                    }
                                        
                                        
                                    
                                        .padding()
                                    .frame(height: 100)
                                    
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
