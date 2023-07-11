//
//  ContentView.swift
//  Appsinvo test
//
//  Created by Swapnil baranwal on 29/03/23.
//

import SwiftUI



struct ContentView: View {
    @State private var selectedTab = 2
    @State private var SelectedType = 1
    @State private var visit = 1
    @State private var insurance = 1
    var body: some View {
            ZStack{
                Color(red: 200/255, green: 253/255, blue: 230/255)
                    .ignoresSafeArea()

                VStack {
//MARK: - Header Fixed
                    HStack{
                        VStack{
                        HStack{
                            HStack{
                                Image(systemName: "plus.circle.fill")
                                        .foregroundColor(Color.green)
                                Text("Treatus")
                                    .fontWeight(.bold)
                            }.padding(.bottom,8.0)
//                            .padding(.bottom, 100.0)
                            
                            VStack{
                            Text("Current Location")
                                .font(.system(size: 14))
                            HStack{
                            Image(systemName:"mappin.and.ellipse" )
                                    .foregroundColor(Color.green)
                                Text("Texas")
                                    .fontWeight(.bold)
                                Image(systemName:"chevron.down")
                                    .foregroundColor(Color.green)
                            }
                        }
//                            .padding(.bottom, 120.0)
                        }
                        .padding(.bottom,50)
                            HStack(alignment:.top){
                                VStack(alignment:.leading){
                            Text("GET YOUR BEST")
                                .font(.system(size: 20))
                            Text("MEDICAL SERVICES")
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(Color.green)
                            }
                                Spacer()
                            }.padding()
                            
                    }
                        
                            Image("doctor")
                        
                    }.background(Color.white)
                    
 //MARK: - ScrollView
                    ScrollView {
                    VStack {
                       
                        Group{
                        HStack{
                            Text("Select type of service")
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(5)
                        HStack{
                            VStack {
                                Spacer()
                                Image("img4")
                                    .border(Color.white, width: 5)
                                .cornerRadius(10)
                                Text("Primary Care Physican")

                                    .font(.system(size: 12))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)

                            }
                            .padding(.leading)
                            Spacer()
                            VStack {
                                Image("img1")
                                    .border(Color.white, width: 5)
                                .cornerRadius(10)
                                Text("Geriatician")
                                    .font(.system(size: 12))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                            }
                            Spacer()
                            VStack {
                                Image("img2")
                                    .border(Color.white, width: 5)
                                .cornerRadius(10)
                                Text("Paediatrician")
                                    .font(.system(size: 12))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                            }
                            Spacer()
                        }
                        HStack{
                            VStack {
                                Image("img2")
                                    .border(Color.white, width: 5)
                                .cornerRadius(10)
                                Text("Chriopractor")
                                    .font(.system(size: 12))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                            }
                            .padding(.leading)
                            Spacer()
                            VStack {
                                Image("img4")
                                    .border(Color.white, width: 5)
                                .cornerRadius(10)
                                Text("Physiotherapist")
                                    .font(.system(size: 12))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                            }
                            Spacer()
                            VStack {
                                Image("img5")
                                    .border(Color.white, width: 5)
                                .cornerRadius(10)
                                Text("Physician Assistant")
                                    .font(.system(size: 12))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                            }
                            Spacer()
                        }
                        }
                        
                        HStack{
                            Text("Select visit type")
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(5)
                        HStack{
                            Spacer()
                            VStack {
                                Button(action: {
                                    withAnimation {
                                        self.SelectedType = 0
                                    }
                                }) {
                                    VStack {
                                        Image(SelectedType == 0 ? "Home white": "Home Black")
                                        Text("Home")
                                    }

                                    .padding(30)

                                        .foregroundColor(self.SelectedType == 0 ? .white : .black)
                                        .background(self.SelectedType == 0 ? Color.green : Color.white)
                                        .cornerRadius(20)
                                }

                            }
                            Spacer()
                            VStack {
                                Button(action: {
                                    withAnimation {
                                        self.SelectedType = 1
                                    }
                                }) {
                                    VStack {
                                        Image(SelectedType == 1 ? "Office White": "Office black")
                                        Text("Office")
                                    }
                                    .padding(30)

                                        .foregroundColor(self.SelectedType == 1 ? .white : .black)
                                        .background(self.SelectedType == 1 ? Color.green : Color.white)
                                        .cornerRadius(20)
                                }

                            }
                            Spacer()
                            VStack {
                                Button(action: {
                                    withAnimation {
                                        self.SelectedType = 2
                                    }
                                }) {
                                    VStack {
                                        Image(SelectedType == 2 ? "Virtual white": "Virtual Black")
                                        Text("Virtual")
                                    }

                                    .padding(30)

                                        .foregroundColor(self.SelectedType == 2 ? .white : .black)
                                        .background(self.SelectedType == 2 ? Color.green : Color.white)
                                        .cornerRadius(20)
                                }

                            }
                            Spacer()
                        }
                            
                        HStack{
                            Text("Time of the visit")
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(5)
                        HStack{
                            Spacer()
                            VStack {
                                Button(action: {
                                    withAnimation {
                                        self.visit = 0
                                    }
                                }) {
                                    VStack {
                                        Image(visit == 0 ? "time_white": "time")
                                        Text("Need an appointment now")
                                    }

                                    .padding(25)

                                        .foregroundColor(self.visit == 0 ? .white : .black)
                                        .background(self.visit == 0 ? Color.green : Color.white)
                                        .cornerRadius(20)
                                }

                            }
                            Spacer()
                            VStack {
                                Button(action: {
                                    withAnimation {
                                        self.visit = 1
                                    }
                                }) {
                                    VStack {
                                        Image(visit == 1 ? "Calender White1": "Calender White")
                                        Text("Select other time")
                                    }

                                    .padding(25)

                                        .foregroundColor(self.visit == 1 ? .white : .black)
                                        .background(self.visit == 1 ? Color.green : Color.white)
                                        .cornerRadius(20)
                                }

                            }
                            Spacer()
                        }
                        
                        HStack{
                            Text("Insurance")
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(5)
                        HStack{
                            Spacer()
                            VStack {
                                Button(action: {
                                    withAnimation {
                                        self.insurance = 0
                                    }
                                }) {
                                    VStack {
                                        Text("In-Network")
                                    }

                                    .padding(25)

                                        .foregroundColor(self.insurance == 0 ? .white : .black)
                                        .background(self.insurance == 0 ? Color.green : Color.white)
                                        .cornerRadius(20)
                                }

                            }
                            Spacer()
                            VStack {
                                Button(action: {
                                    withAnimation {
                                        self.insurance = 1
                                    }
                                }) {
                                    VStack {
                                        Text("Out-of-network")
                                    }

                                    .padding(25)

                                        .foregroundColor(self.insurance == 1 ? .white : .black)
                                        .background(self.insurance == 1 ? Color.green : Color.white)
                                        .cornerRadius(20)
                                }

                            }
                            Spacer()
                        }

                    }
                    }
//MARK: - Tab Bar
                    ZStack{
                        HStack(alignment: .center, spacing: 15) {
                            Button(action: {
                                withAnimation {
                                    self.selectedTab = 0
                                }
                            }) {
                                VStack {
                                    Image(selectedTab == 0 ? "Notification": "Notifiction")
                                        .scaledToFit()
                                        .frame(width: 25, height: 25)
                                    Text(selectedTab == 0 ? "" : "Notification")
                                        .font(.system(size: 8))
                                        .foregroundColor(Color(red: 255/255, green: 87/255, blue:34/255))
                                }
                            }
                            .padding(5)
                            Button(action: {
                                withAnimation() {
                                    self.selectedTab = 1
                                }
                            }) {
                                VStack {
                                    Image(selectedTab == 1 ? "appointment": "Appointment-1")
                                        .scaledToFit()
                                        .frame(width: 25, height: 25)
                                    Text(selectedTab == 1 ? "" : "Appointments")
                                        .font(.system(size: 8))
                                        .foregroundColor(Color(red: 255/255, green: 87/255, blue:34/255))
                                }.transition(.slide)
                            }
                            .padding(5)

                            Button(action: {
                                withAnimation {
                                    self.selectedTab = 2
                                }
                            }) {
                                VStack {
                                    Image(selectedTab == 2 ? "Services": "Services-1")
                                        .scaledToFit()
                                        .frame(width: 25, height: 25)

                                    Text(selectedTab == 2 ? "" : "Services")
                                        .font(.system(size: 8))
                                        .foregroundColor(Color(red: 255/255, green: 87/255, blue:34/255))
                                }
                            }
                            .padding(5)

                            Button(action: {
                                withAnimation {
                                    self.selectedTab = 3
                                }
                            }) {
                                VStack {
                                    Image(selectedTab == 3 ? "Medical": "Medical Profile")
                                        .scaledToFit()
                                        .frame(width: 25, height: 25)
                                    Text(selectedTab == 3 ? "" : "Medical")
                                        .font(.system(size: 8))
                                        .foregroundColor(Color(red: 255/255, green: 87/255, blue:34/255))
                                }
                            }
                            .padding(5)

                            Button(action: {
                                withAnimation {
                                    self.selectedTab = 4
                                }
                            }) {
                                VStack {
                                    Image(selectedTab == 4 ? "Settings": "Settings-1")

//
                                        .scaledToFit()
                                        .frame(width: 25, height: 25)

//                                        .foregroundColor(self.selectedTab == 0 ? .white : .gray)
//                                        .background(self.selectedTab == 0 ? Color.green : Color.clear)
//                                    .cornerRadius(50)
                                    Text(selectedTab == 4 ? "" : "Settings")
                                        .font(.system(size: 8))
                                        .foregroundColor(Color(red: 255/255, green: 87/255, blue:34/255))
                                }
                            }
                            .padding(5)
                        }
                        .padding(15)



                    }.background(Color.white)
                        .cornerRadius(15)
                }
            }

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct ContentView: View {
//    @State private var selectedTab = 0
//    let tabCount = 3
//    var body: some View {
//        TabView(selection: $selectedTab) {
//            Text("Tab 1")
//                .tabItem {
//                    Image(systemName: "1.circle")
//                    Text("Tab 1")
//                }.tag(0)
//
//            Text("Tab 2")
//                .tabItem {
//                    Image(systemName: "2.circle")
//                    Text("Tab 2")
//                }.tag(1)
//
//            Text("Tab 3")
//                .tabItem {
//                    Image(systemName: "3.circle")
//                    Text("Tab 3")
//                }.tag(2)
//        }
//        BubbleView(selectedTab: selectedTab, tabCount: tabCount)
//    }
//}
//struct BubbleView: View {
//    let selectedTab: Int
//    let tabCount: Int
//
//    var body: some View {
//        GeometryReader { geometry in
//            let size = geometry.size.width / CGFloat(tabCount)
//            let x = CGFloat(selectedTab) * size
//
//            Circle()
//                .foregroundColor(.blue)
//                .frame(width: size - 10, height: size - 10)
//                .offset(x: x + size/2 - 5, y: -25)
//                .animation(.spring())
//        }
//    }
//}
