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
                                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                                    Image("CalendarIcon")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width:100, height:200)
                                }
                            }
                        }
                        NavigationLink(destination: Pomodoro().navigationTitle("Pomodoro Timer")){
                            ZStack{
                                Rectangle()
                                    .cornerRadius(30)
                                    .foregroundColor(.lobsterRed)
                                    .frame(height:180)
                                Image("Timer")
                                    .resizable()
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .frame(width:100, height:200)
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
                            Image("MapRetry")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width:100, height:200)
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
