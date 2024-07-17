//
//  Navigation.swift
//  WorkWave
//
//  Created by Scholar on 7/16/24.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.beachYellow)
                    .ignoresSafeArea()
                VStack{
                    //Two buttons next to each other at the top
                    HStack{
                        NavigationLink(destination: CalendarPage().navigationTitle("To Do")){
                            ZStack{
                                Rectangle()
                                    .cornerRadius(30)
                                    .foregroundColor(.summerOrange)
                                    .frame(height:180)
                                Text("Calendar")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                        }
                        NavigationLink(destination: Pomodoro().navigationTitle("Pomodoro Timer")){
                            ZStack{
                                Rectangle()
                                    .cornerRadius(30)
                                    .foregroundColor(.lobsterRed)
                                    .frame(height:180)
                                Text("Pomodoro")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                        }
                    }.padding()
                    VStack{
                        //Column of 3 info buttons
                        Spacer()
                        NavigationLink(destination: Burnout().navigationTitle("Avoiding Burnout")){
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.greyGreen)
                                    .cornerRadius(10)
                                Text("Burnout")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .font(.title)
                            }
                        }
                        NavigationLink(destination: Productivity().navigationTitle("Productivity Tips")){
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.greyGreen)
                                    .cornerRadius(10)
                                Text("Productivity Tips")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .font(.title)
                            }
                        }
                        NavigationLink(destination: StudyTips().navigationTitle("Study Hacks")){
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.greyGreen)
                                    .cornerRadius(10)
                                Text("Test Taking Tips")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .font(.title)
                            }
                        }
                    }.padding()
                    
                    //Let's make the Map button a bit more separate and larger since its function is somewhat different
                    Spacer()
                    NavigationLink(destination: MapPage().navigationTitle("Places to Go")){
                        ZStack{
                            Rectangle()
                                .cornerRadius(20)
                                .foregroundColor(.oceanGreen)
                                .frame(height: 140)
                            Text("Map")
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }
                    }.padding()
                } .padding()
            }
        }
    }
}

#Preview {
    Navigation()
}
